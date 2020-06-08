Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808B91F2557
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Uz+E1CRAjR+aoX1WopWdH1PbHkRjQIQkCR1mCWVda8=; b=N8OwUSotqyceLU
	C+97j6xjk0WNG+w7PV1Jvi/F5zrwBMzPixivfPnT5B8/1btKBAcUFm5lEKr0TCEDE65LuwXL18x/k
	P6BXEHjhMVbqXuYS9VQGFLa9WCmQkVPVBkVXcyuHVB3/ZTJLge2riiQ5hj3RezKPZ9qsRWRuQCOSS
	0gEDFoFqjEpR6l7i/lo+N8tXaam0C+NQNy+ZlzSMnfEpwQrbmY/+TMPcV5gvFR1FWGM+jNUlYTxqY
	sB74ay6WRgIRZjRqbVohaZhrrUUT+B4b3P2XVl/vYTaCNlvaspOf8Z5/q7m0Uc4SA0Wdh83/cfsUN
	/R8I6f29clFAVa6qzDyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRCs-0001QL-QL; Mon, 08 Jun 2020 23:29:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQzE-0002PR-JV
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:15:29 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A04C20659;
 Mon,  8 Jun 2020 23:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658124;
 bh=meH1urRNxIvrEhm08nL3kZUqKtla9O7xrsmFXvwZvN0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=R/7ty+WwjzT7St9xDDYG1+KP5LirOgMHsI+fKIytY6JitFJmCvml7nEOCBt7FbqGC
 izvqLUXgdH/U4m9znTJl0ctDEIWScy53JOnZlOwyGxD+I1sl3mfPPYVecVimFW6c8S
 BgD7x2Xm18YM6XuEPb/yt2UwrG0mABBvp5i5sDFk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 160/606] dmaengine: owl: Use correct lock in
 owl_dma_get_pchan()
Date: Mon,  8 Jun 2020 19:04:45 -0400
Message-Id: <20200608231211.3363633-160-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161524_712019_236F51B3 
X-CRM114-Status: GOOD (  15.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cristian Ciocaltea <cristian.ciocaltea@gmail.com>,
 Vinod Koul <vkoul@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnJvbTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAZ21haWwuY29tPgoK
Y29tbWl0IGY4ZjQ4MmRlYjA3ODM4OWI0Mjc2OGIyMTkzZTA1MGE4MWFhZTEzN2QgdXBzdHJlYW0u
CgpXaGVuIHRoZSBrZXJuZWwgaXMgYnVpbHQgd2l0aCBsb2NrZGVwIHN1cHBvcnQgYW5kIHRoZSBv
d2wtZG1hIGRyaXZlciBpcwp1c2VkLCB0aGUgZm9sbG93aW5nIG1lc3NhZ2UgaXMgc2hvd246Cgpb
ICAgIDIuNDk2OTM5XSBJTkZPOiB0cnlpbmcgdG8gcmVnaXN0ZXIgbm9uLXN0YXRpYyBrZXkuClsg
ICAgMi41MDE4ODldIHRoZSBjb2RlIGlzIGZpbmUgYnV0IG5lZWRzIGxvY2tkZXAgYW5ub3RhdGlv
bi4KWyAgICAyLjUwNzM1N10gdHVybmluZyBvZmYgdGhlIGxvY2tpbmcgY29ycmVjdG5lc3MgdmFs
aWRhdG9yLgpbICAgIDIuNTEyODM0XSBDUFU6IDAgUElEOiAxMiBDb21tOiBrd29ya2VyLzA6MSBO
b3QgdGFpbnRlZCA1LjYuMysgIzE1ClsgICAgMi41MTkwODRdIEhhcmR3YXJlIG5hbWU6IEdlbmVy
aWMgRFQgYmFzZWQgc3lzdGVtClsgICAgMi41MjM4NzhdIFdvcmtxdWV1ZTogZXZlbnRzX2ZyZWV6
YWJsZSBtbWNfcmVzY2FuClsgICAgMi41Mjg2ODFdIFs8ODAxMTI3ZjA+XSAodW53aW5kX2JhY2t0
cmFjZSkgZnJvbSBbPDgwMTBkYTU4Pl0gKHNob3dfc3RhY2srMHgxMC8weDE0KQpbICAgIDIuNTM2
NDIwXSBbPDgwMTBkYTU4Pl0gKHNob3dfc3RhY2spIGZyb20gWzw4MDgwZmJlOD5dIChkdW1wX3N0
YWNrKzB4YjQvMHhlMCkKWyAgICAyLjU0MzY0NV0gWzw4MDgwZmJlOD5dIChkdW1wX3N0YWNrKSBm
cm9tIFs8ODAxN2VmYTQ+XSAocmVnaXN0ZXJfbG9ja19jbGFzcysweDZmMC8weDcxOCkKWyAgICAy
LjU1MTgxNl0gWzw4MDE3ZWZhND5dIChyZWdpc3Rlcl9sb2NrX2NsYXNzKSBmcm9tIFs8ODAxN2I3
ZDA+XSAoX19sb2NrX2FjcXVpcmUrMHg3OC8weDI1ZjApClsgICAgMi41NjAzMzBdIFs8ODAxN2I3
ZDA+XSAoX19sb2NrX2FjcXVpcmUpIGZyb20gWzw4MDE3ZTVlND5dIChsb2NrX2FjcXVpcmUrMHhk
OC8weDFmNCkKWyAgICAyLjU2ODE1OV0gWzw4MDE3ZTVlND5dIChsb2NrX2FjcXVpcmUpIGZyb20g
Wzw4MDgzMWZiMD5dIChfcmF3X3NwaW5fbG9ja19pcnFzYXZlKzB4M2MvMHg1MCkKWyAgICAyLjU3
NjU4OV0gWzw4MDgzMWZiMD5dIChfcmF3X3NwaW5fbG9ja19pcnFzYXZlKSBmcm9tIFs8ODA1MWI1
ZmM+XSAob3dsX2RtYV9pc3N1ZV9wZW5kaW5nKzB4YmMvMHgxMjApClsgICAgMi41ODU4ODRdIFs8
ODA1MWI1ZmM+XSAob3dsX2RtYV9pc3N1ZV9wZW5kaW5nKSBmcm9tIFs8ODA2NjhjYmM+XSAob3ds
X21tY19yZXF1ZXN0KzB4MWIwLzB4MzkwKQpbICAgIDIuNTk0NjU1XSBbPDgwNjY4Y2JjPl0gKG93
bF9tbWNfcmVxdWVzdCkgZnJvbSBbPDgwNjUwY2UwPl0gKG1tY19zdGFydF9yZXF1ZXN0KzB4OTQv
MHhiYykKWyAgICAyLjYwMjkwNl0gWzw4MDY1MGNlMD5dIChtbWNfc3RhcnRfcmVxdWVzdCkgZnJv
bSBbPDgwNjUwZWMwPl0gKG1tY193YWl0X2Zvcl9yZXErMHg2NC8weGQwKQpbICAgIDIuNjExMjQ1
XSBbPDgwNjUwZWMwPl0gKG1tY193YWl0X2Zvcl9yZXEpIGZyb20gWzw4MDY1YWExMD5dIChtbWNf
YXBwX3NlbmRfc2NyKzB4MTBjLzB4MTQ0KQpbICAgIDIuNjE5NjY5XSBbPDgwNjVhYTEwPl0gKG1t
Y19hcHBfc2VuZF9zY3IpIGZyb20gWzw4MDY1OWIzYz5dIChtbWNfc2Rfc2V0dXBfY2FyZCsweDRj
LzB4MzE4KQpbICAgIDIuNjI4MDkyXSBbPDgwNjU5YjNjPl0gKG1tY19zZF9zZXR1cF9jYXJkKSBm
cm9tIFs8ODA2NTlmMGM+XSAobW1jX3NkX2luaXRfY2FyZCsweDEwNC8weDQzMCkKWyAgICAyLjYz
NjYwMV0gWzw4MDY1OWYwYz5dIChtbWNfc2RfaW5pdF9jYXJkKSBmcm9tIFs8ODA2NWEzZTA+XSAo
bW1jX2F0dGFjaF9zZCsweGNjLzB4MTZjKQpbICAgIDIuNjQ0Njc4XSBbPDgwNjVhM2UwPl0gKG1t
Y19hdHRhY2hfc2QpIGZyb20gWzw4MDY1MzAxYz5dIChtbWNfcmVzY2FuKzB4M2FjLzB4NDBjKQpb
ICAgIDIuNjUyMzMyXSBbPDgwNjUzMDFjPl0gKG1tY19yZXNjYW4pIGZyb20gWzw4MDE0MzI0ND5d
IChwcm9jZXNzX29uZV93b3JrKzB4MmQ4LzB4NzgwKQpbICAgIDIuNjYwMjM5XSBbPDgwMTQzMjQ0
Pl0gKHByb2Nlc3Nfb25lX3dvcmspIGZyb20gWzw4MDE0MzczMD5dICh3b3JrZXJfdGhyZWFkKzB4
NDQvMHg1OTgpClsgICAgMi42NjgzMjNdIFs8ODAxNDM3MzA+XSAod29ya2VyX3RocmVhZCkgZnJv
bSBbPDgwMTRiNWY4Pl0gKGt0aHJlYWQrMHgxNDgvMHgxNTApClsgICAgMi42NzU3MDhdIFs8ODAx
NGI1Zjg+XSAoa3RocmVhZCkgZnJvbSBbPDgwMTAxMGI0Pl0gKHJldF9mcm9tX2ZvcmsrMHgxNC8w
eDIwKQpbICAgIDIuNjgyOTEyXSBFeGNlcHRpb24gc3RhY2soMHhlZThmZGZiMCB0byAweGVlOGZk
ZmY4KQpbICAgIDIuNjg3OTU0XSBkZmEwOiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMApbICAgIDIuNjk2MTE4XSBk
ZmMwOiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAw
MCAwMDAwMDAwMCAwMDAwMDAwMApbICAgIDIuNzA0Mjc3XSBkZmUwOiAwMDAwMDAwMCAwMDAwMDAw
MCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAxMyAwMDAwMDAwMAoKVGhlIG9idmlvdXMgZml4IHdv
dWxkIGJlIHRvIHVzZSAnc3Bpbl9sb2NrX2luaXQoKScgb24gJ3BjaGFuLT5sb2NrJwpiZWZvcmUg
YXR0ZW1wdGluZyB0byBjYWxsICdzcGluX2xvY2tfaXJxc2F2ZSgpJyBpbiAnb3dsX2RtYV9nZXRf
cGNoYW4oKScuCgpIb3dldmVyLCBhY2NvcmRpbmcgdG8gTWFuaXZhbm5hbiBTYWRoYXNpdmFtLCAn
cGNoYW4tPmxvY2snIHdhcyBzdXBwb3NlZAp0byBvbmx5IHByb3RlY3QgJ3BjaGFuLT52Y2hhbicg
d2hpbGUgJ29kLT5sb2NrJyBkb2VzIGEgc2ltaWxhciBqb2IgaW4KJ293bF9kbWFfdGVybWluYXRl
X3BjaGFuKCknLgoKVGhlcmVmb3JlLCB0aGlzIHBhdGNoIHN1YnN0aXR1dGVzICdwY2hhbi0+bG9j
aycgd2l0aCAnb2QtPmxvY2snIGFuZApyZW1vdmVzIHRoZSAnbG9jaycgYXR0cmlidXRlIGluICdv
d2xfZG1hX3BjaGFuJyBzdHJ1Y3QuCgpGaXhlczogNDdlMjA1NzdjMjRkICgiZG1hZW5naW5lOiBB
ZGQgQWN0aW9ucyBTZW1pIE93bCBmYW1pbHkgUzkwMCBETUEgZHJpdmVyIikKU2lnbmVkLW9mZi1i
eTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAZ21haWwuY29tPgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGlu
YXJvLm9yZz4KQWNrZWQtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KTGlu
azogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci9jNmU2Y2RhY2EyNTJiNTM2NGJkMjk0MDkzNjcz
OTUxMDM2NDg4Y2YwLjE1ODg0MzkwNzMuZ2l0LmNyaXN0aWFuLmNpb2NhbHRlYUBnbWFpbC5jb20K
U2lnbmVkLW9mZi1ieTogVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KU2lnbmVkLW9mZi1i
eTogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KLS0tCiBk
cml2ZXJzL2RtYS9vd2wtZG1hLmMgfCA4ICsrKy0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hL293bC1k
bWEuYyBiL2RyaXZlcnMvZG1hL293bC1kbWEuYwppbmRleCBjNjgzMDUxMjU3ZmQuLjY2ZWY3MGIw
MGVjMCAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEvb3dsLWRtYS5jCisrKyBiL2RyaXZlcnMvZG1h
L293bC1kbWEuYwpAQCAtMTc1LDEzICsxNzUsMTEgQEAgc3RydWN0IG93bF9kbWFfdHhkIHsKICAq
IEBpZDogcGh5c2ljYWwgaW5kZXggdG8gdGhpcyBjaGFubmVsCiAgKiBAYmFzZTogdmlydHVhbCBt
ZW1vcnkgYmFzZSBmb3IgdGhlIGRtYSBjaGFubmVsCiAgKiBAdmNoYW46IHRoZSB2aXJ0dWFsIGNo
YW5uZWwgY3VycmVudGx5IGJlaW5nIHNlcnZlZCBieSB0aGlzIHBoeXNpY2FsIGNoYW5uZWwKLSAq
IEBsb2NrOiBhIGxvY2sgdG8gdXNlIHdoZW4gYWx0ZXJpbmcgYW4gaW5zdGFuY2Ugb2YgdGhpcyBz
dHJ1Y3QKICAqLwogc3RydWN0IG93bF9kbWFfcGNoYW4gewogCXUzMgkJCWlkOwogCXZvaWQgX19p
b21lbQkJKmJhc2U7CiAJc3RydWN0IG93bF9kbWFfdmNoYW4JKnZjaGFuOwotCXNwaW5sb2NrX3QJ
CWxvY2s7CiB9OwogCiAvKioKQEAgLTQzNywxNCArNDM1LDE0IEBAIHN0YXRpYyBzdHJ1Y3Qgb3ds
X2RtYV9wY2hhbiAqb3dsX2RtYV9nZXRfcGNoYW4oc3RydWN0IG93bF9kbWEgKm9kLAogCWZvciAo
aSA9IDA7IGkgPCBvZC0+bnJfcGNoYW5zOyBpKyspIHsKIAkJcGNoYW4gPSAmb2QtPnBjaGFuc1tp
XTsKIAotCQlzcGluX2xvY2tfaXJxc2F2ZSgmcGNoYW4tPmxvY2ssIGZsYWdzKTsKKwkJc3Bpbl9s
b2NrX2lycXNhdmUoJm9kLT5sb2NrLCBmbGFncyk7CiAJCWlmICghcGNoYW4tPnZjaGFuKSB7CiAJ
CQlwY2hhbi0+dmNoYW4gPSB2Y2hhbjsKLQkJCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBjaGFu
LT5sb2NrLCBmbGFncyk7CisJCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZvZC0+bG9jaywgZmxh
Z3MpOwogCQkJYnJlYWs7CiAJCX0KIAotCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwY2hhbi0+
bG9jaywgZmxhZ3MpOworCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZvZC0+bG9jaywgZmxhZ3Mp
OwogCX0KIAogCXJldHVybiBwY2hhbjsKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
