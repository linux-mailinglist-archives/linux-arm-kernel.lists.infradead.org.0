Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C976D1C2731
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 19:16:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eG0TxmptyCwImdGg5sgrK3qfRiMoqTzMyG1NlZm/mKA=; b=BYLGYmedPKcpSK
	2/7yddU4ZfU1i9lugBPxp8cLEKjIpxKrWjO2FDKMCb46P+nAsSVTL8fImIyQxS+1OiBw9CMPA3JSh
	Y+O72ZXG5LOD21lebjn+QQxFtc2CqO0X5fibjUK9502WXd2XDgwwN7sQ6+1AUGZair1Q74l4Twxx7
	swPj7wJztQkJBJsfgA56T/J+h39QgprGeAo5K0alUKeQK/TV0ujTE3J41YlWnveMzPMwr8nkFTzOu
	kksl6ktb8bK3faHMbhOnWbwxVivIhJ0fN0Ifa4lyobdeAHBets63eZUwzelQ/+uKTZ0HMmzU0oxGa
	MVNKUtCvQBdtolB4gmDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUvkI-0003DM-Sg; Sat, 02 May 2020 17:16:10 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUvkC-0003C4-I2; Sat, 02 May 2020 17:16:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id e16so10563562wra.7;
 Sat, 02 May 2020 10:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3PIv3g2HbrGzdAz/fXXsONdZmu8F6RevQt0D1oDmLho=;
 b=gV2H5xW2mTm8uTHZxOra8ob6JuAmi+h8HkRMipd8wXZ39Cl03adTXtuChzdjwVBSqF
 T7DTCpK499L13ogQPCODo8zyTDIWQ76Tz5oqsTfbpYK6PG9lo7kHlb2q9swyz2N8HdXU
 I/91hszWw5NKt63LjSaIHT+1bKVHdthB2Gh+gAJKYd8BaDK5sVG32omy1ajV5qdQu1jR
 pSOTekjzBaOHFNJJGxQgRiP2Kv7YSXmGmDNTZ0XouvsoW9j755qByUUsKtTm82DtFs3+
 WJGEXXPvnnhguH+LqS0Lk/X7kFXITvV9HJMXY11u/TvpixyqRllu2AnH4NxUpFNqt8HN
 F/sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3PIv3g2HbrGzdAz/fXXsONdZmu8F6RevQt0D1oDmLho=;
 b=QnZFpBhFjAaqL6zvCosv+p3qqKYp2r5+jXVvcW7i39dPED+ftQhcgK9P45lAEyThGo
 DudEGVIBX5/BLLQMhfx7L/4nFpNnYl3MDsydFQMNwpVavI4XxMPQqYGXqYIzk34ZkaYj
 QHvaSElSRSqlkajL2qH2cJzHyYg+q+2aVz3MW8uYrFh5Wnl7jHOHDnoyAcEYVkedSXnD
 A9sH9LJGe7iVXH+Vw5V7AdfJoKxEWu+/GrT+UeQ3OwKCmATSLv6TXd4QuWEC21mBOZce
 eDffVqQo+iZsg+huZZhGmat5CcKDCTaak5jc28WIMAsafJlrIOQ0sd75U09cvdoVC3mV
 hKbg==
X-Gm-Message-State: AGi0PubYWrq5rqQm+oyy/inXzd7COUEMANX7XBk9Cl3kHkBkJcq08N4Y
 XEYr/gNBbIuww/q6k0zKdbQ=
X-Google-Smtp-Source: APiQypJbj1yl/89EsQl/nrkDrS2TuUaoAtTtpOQQOr9z/uF7PiIxOkiRtxQr8HtZ77MS6EtBt2jRAA==
X-Received: by 2002:a5d:6a8b:: with SMTP id s11mr9916966wru.258.1588439753785; 
 Sat, 02 May 2020 10:15:53 -0700 (PDT)
Received: from localhost.localdomain ([188.24.130.199])
 by smtp.gmail.com with ESMTPSA id k14sm10142090wrp.53.2020.05.02.10.15.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 May 2020 10:15:53 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v4 1/1] dmaengine: owl: Use correct lock in owl_dma_get_pchan()
Date: Sat,  2 May 2020 20:15:51 +0300
Message-Id: <c6e6cdaca252b5364bd294093673951036488cf0.1588439073.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_101604_621864_65003056 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

V2hlbiB0aGUga2VybmVsIGlzIGJ1aWx0IHdpdGggbG9ja2RlcCBzdXBwb3J0IGFuZCB0aGUgb3ds
LWRtYSBkcml2ZXIgaXMKdXNlZCwgdGhlIGZvbGxvd2luZyBtZXNzYWdlIGlzIHNob3duOgoKWyAg
ICAyLjQ5NjkzOV0gSU5GTzogdHJ5aW5nIHRvIHJlZ2lzdGVyIG5vbi1zdGF0aWMga2V5LgpbICAg
IDIuNTAxODg5XSB0aGUgY29kZSBpcyBmaW5lIGJ1dCBuZWVkcyBsb2NrZGVwIGFubm90YXRpb24u
ClsgICAgMi41MDczNTddIHR1cm5pbmcgb2ZmIHRoZSBsb2NraW5nIGNvcnJlY3RuZXNzIHZhbGlk
YXRvci4KWyAgICAyLjUxMjgzNF0gQ1BVOiAwIFBJRDogMTIgQ29tbToga3dvcmtlci8wOjEgTm90
IHRhaW50ZWQgNS42LjMrICMxNQpbICAgIDIuNTE5MDg0XSBIYXJkd2FyZSBuYW1lOiBHZW5lcmlj
IERUIGJhc2VkIHN5c3RlbQpbICAgIDIuNTIzODc4XSBXb3JrcXVldWU6IGV2ZW50c19mcmVlemFi
bGUgbW1jX3Jlc2NhbgpbICAgIDIuNTI4NjgxXSBbPDgwMTEyN2YwPl0gKHVud2luZF9iYWNrdHJh
Y2UpIGZyb20gWzw4MDEwZGE1OD5dIChzaG93X3N0YWNrKzB4MTAvMHgxNCkKWyAgICAyLjUzNjQy
MF0gWzw4MDEwZGE1OD5dIChzaG93X3N0YWNrKSBmcm9tIFs8ODA4MGZiZTg+XSAoZHVtcF9zdGFj
aysweGI0LzB4ZTApClsgICAgMi41NDM2NDVdIFs8ODA4MGZiZTg+XSAoZHVtcF9zdGFjaykgZnJv
bSBbPDgwMTdlZmE0Pl0gKHJlZ2lzdGVyX2xvY2tfY2xhc3MrMHg2ZjAvMHg3MTgpClsgICAgMi41
NTE4MTZdIFs8ODAxN2VmYTQ+XSAocmVnaXN0ZXJfbG9ja19jbGFzcykgZnJvbSBbPDgwMTdiN2Qw
Pl0gKF9fbG9ja19hY3F1aXJlKzB4NzgvMHgyNWYwKQpbICAgIDIuNTYwMzMwXSBbPDgwMTdiN2Qw
Pl0gKF9fbG9ja19hY3F1aXJlKSBmcm9tIFs8ODAxN2U1ZTQ+XSAobG9ja19hY3F1aXJlKzB4ZDgv
MHgxZjQpClsgICAgMi41NjgxNTldIFs8ODAxN2U1ZTQ+XSAobG9ja19hY3F1aXJlKSBmcm9tIFs8
ODA4MzFmYjA+XSAoX3Jhd19zcGluX2xvY2tfaXJxc2F2ZSsweDNjLzB4NTApClsgICAgMi41NzY1
ODldIFs8ODA4MzFmYjA+XSAoX3Jhd19zcGluX2xvY2tfaXJxc2F2ZSkgZnJvbSBbPDgwNTFiNWZj
Pl0gKG93bF9kbWFfaXNzdWVfcGVuZGluZysweGJjLzB4MTIwKQpbICAgIDIuNTg1ODg0XSBbPDgw
NTFiNWZjPl0gKG93bF9kbWFfaXNzdWVfcGVuZGluZykgZnJvbSBbPDgwNjY4Y2JjPl0gKG93bF9t
bWNfcmVxdWVzdCsweDFiMC8weDM5MCkKWyAgICAyLjU5NDY1NV0gWzw4MDY2OGNiYz5dIChvd2xf
bW1jX3JlcXVlc3QpIGZyb20gWzw4MDY1MGNlMD5dIChtbWNfc3RhcnRfcmVxdWVzdCsweDk0LzB4
YmMpClsgICAgMi42MDI5MDZdIFs8ODA2NTBjZTA+XSAobW1jX3N0YXJ0X3JlcXVlc3QpIGZyb20g
Wzw4MDY1MGVjMD5dIChtbWNfd2FpdF9mb3JfcmVxKzB4NjQvMHhkMCkKWyAgICAyLjYxMTI0NV0g
Wzw4MDY1MGVjMD5dIChtbWNfd2FpdF9mb3JfcmVxKSBmcm9tIFs8ODA2NWFhMTA+XSAobW1jX2Fw
cF9zZW5kX3NjcisweDEwYy8weDE0NCkKWyAgICAyLjYxOTY2OV0gWzw4MDY1YWExMD5dIChtbWNf
YXBwX3NlbmRfc2NyKSBmcm9tIFs8ODA2NTliM2M+XSAobW1jX3NkX3NldHVwX2NhcmQrMHg0Yy8w
eDMxOCkKWyAgICAyLjYyODA5Ml0gWzw4MDY1OWIzYz5dIChtbWNfc2Rfc2V0dXBfY2FyZCkgZnJv
bSBbPDgwNjU5ZjBjPl0gKG1tY19zZF9pbml0X2NhcmQrMHgxMDQvMHg0MzApClsgICAgMi42MzY2
MDFdIFs8ODA2NTlmMGM+XSAobW1jX3NkX2luaXRfY2FyZCkgZnJvbSBbPDgwNjVhM2UwPl0gKG1t
Y19hdHRhY2hfc2QrMHhjYy8weDE2YykKWyAgICAyLjY0NDY3OF0gWzw4MDY1YTNlMD5dIChtbWNf
YXR0YWNoX3NkKSBmcm9tIFs8ODA2NTMwMWM+XSAobW1jX3Jlc2NhbisweDNhYy8weDQwYykKWyAg
ICAyLjY1MjMzMl0gWzw4MDY1MzAxYz5dIChtbWNfcmVzY2FuKSBmcm9tIFs8ODAxNDMyNDQ+XSAo
cHJvY2Vzc19vbmVfd29yaysweDJkOC8weDc4MCkKWyAgICAyLjY2MDIzOV0gWzw4MDE0MzI0ND5d
IChwcm9jZXNzX29uZV93b3JrKSBmcm9tIFs8ODAxNDM3MzA+XSAod29ya2VyX3RocmVhZCsweDQ0
LzB4NTk4KQpbICAgIDIuNjY4MzIzXSBbPDgwMTQzNzMwPl0gKHdvcmtlcl90aHJlYWQpIGZyb20g
Wzw4MDE0YjVmOD5dIChrdGhyZWFkKzB4MTQ4LzB4MTUwKQpbICAgIDIuNjc1NzA4XSBbPDgwMTRi
NWY4Pl0gKGt0aHJlYWQpIGZyb20gWzw4MDEwMTBiND5dIChyZXRfZnJvbV9mb3JrKzB4MTQvMHgy
MCkKWyAgICAyLjY4MjkxMl0gRXhjZXB0aW9uIHN0YWNrKDB4ZWU4ZmRmYjAgdG8gMHhlZThmZGZm
OCkKWyAgICAyLjY4Nzk1NF0gZGZhMDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKWyAgICAyLjY5NjExOF0gZGZj
MDogMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMDAKWyAgICAyLjcwNDI3N10gZGZlMDogMDAwMDAwMDAgMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMTMgMDAwMDAwMDAKClRoZSBvYnZpb3VzIGZpeCB3b3Vs
ZCBiZSB0byB1c2UgJ3NwaW5fbG9ja19pbml0KCknIG9uICdwY2hhbi0+bG9jaycKYmVmb3JlIGF0
dGVtcHRpbmcgdG8gY2FsbCAnc3Bpbl9sb2NrX2lycXNhdmUoKScgaW4gJ293bF9kbWFfZ2V0X3Bj
aGFuKCknLgoKSG93ZXZlciwgYWNjb3JkaW5nIHRvIE1hbml2YW5uYW4gU2FkaGFzaXZhbSwgJ3Bj
aGFuLT5sb2NrJyB3YXMgc3VwcG9zZWQKdG8gb25seSBwcm90ZWN0ICdwY2hhbi0+dmNoYW4nIHdo
aWxlICdvZC0+bG9jaycgZG9lcyBhIHNpbWlsYXIgam9iIGluCidvd2xfZG1hX3Rlcm1pbmF0ZV9w
Y2hhbigpJy4KClRoZXJlZm9yZSwgdGhpcyBwYXRjaCBzdWJzdGl0dXRlcyAncGNoYW4tPmxvY2sn
IHdpdGggJ29kLT5sb2NrJyBhbmQKcmVtb3ZlcyB0aGUgJ2xvY2snIGF0dHJpYnV0ZSBpbiAnb3ds
X2RtYV9wY2hhbicgc3RydWN0LgoKRml4ZXM6IDQ3ZTIwNTc3YzI0ZCAoImRtYWVuZ2luZTogQWRk
IEFjdGlvbnMgU2VtaSBPd2wgZmFtaWx5IFM5MDAgRE1BCmRyaXZlciIpCgpTaWduZWQtb2ZmLWJ5
OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBnbWFpbC5jb20+ClJldmll
d2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5h
cm8ub3JnPgpBY2tlZC1ieTogQW5kcmVhcyBGw6RyYmVyIDxhZmFlcmJlckBzdXNlLmRlPgotLS0K
Q2hhbmdlcyBpbiB2NDoKKiBDaGFuZ2UgcGF0Y2ggdGl0bGUgZnJvbSAnZG1hOiBhY3Rpb25zOiBG
aXggbG9ja2RlcCBzcGxhdCBmb3Igb3dsLWRtYScKICB0byAnZG1hZW5naW5lOiBvd2w6IFVzZSBj
b3JyZWN0IGxvY2sgaW4gb3dsX2RtYV9nZXRfcGNoYW4oKScKKiBBZGQgRml4ZXMgYW5kIEFja2Vk
LWJ5IHRhZ3MgaW4gdGhlIGNvbW1pdCBtZXNzYWdlCgpDaGFuZ2VzIGluIHYzOgoqIEdldCByaWQg
b2YgdGhlIGtlcm5lbGRvYyBjb21tZW50IGZvciB0aGUgcmVtb3ZlZCBzdHJ1Y3QgYXR0cmlidXRl
CiogQWRkIHRoZSBSZXZpZXdlZC1ieSB0YWcgaW4gdGhlIGNvbW1pdCBtZXNzYWdlCgpDaGFuZ2Vz
IGluIHYyOgoqIEltcHJvdmUgdGhlIGZpeCBhcyBzdWdnZXN0ZWQgYnkgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtOiBzdWJzdGl0dXRlCiAgJ3BjaGFuLT5sb2NrJyB3aXRoICdvZC0+bG9jaycgYW5kIGdl
dCByaWQgb2YgdGhlICdsb2NrJyBhdHRyaWJ1dGUgaW4KICAnb3dsX2RtYV9wY2hhbicgc3RydWN0
CiogVXBkYXRlIHRoZSBjb21taXQgbWVzc2FnZSB0byByZWZsZWN0IHRoZSBjaGFuZ2VzCgogZHJp
dmVycy9kbWEvb3dsLWRtYS5jIHwgOCArKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS9vd2wtZG1h
LmMgYi9kcml2ZXJzL2RtYS9vd2wtZG1hLmMKaW5kZXggYzY4MzA1MTI1N2ZkLi42NmVmNzBiMDBl
YzAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hL293bC1kbWEuYworKysgYi9kcml2ZXJzL2RtYS9v
d2wtZG1hLmMKQEAgLTE3NSwxMyArMTc1LDExIEBAIHN0cnVjdCBvd2xfZG1hX3R4ZCB7CiAgKiBA
aWQ6IHBoeXNpY2FsIGluZGV4IHRvIHRoaXMgY2hhbm5lbAogICogQGJhc2U6IHZpcnR1YWwgbWVt
b3J5IGJhc2UgZm9yIHRoZSBkbWEgY2hhbm5lbAogICogQHZjaGFuOiB0aGUgdmlydHVhbCBjaGFu
bmVsIGN1cnJlbnRseSBiZWluZyBzZXJ2ZWQgYnkgdGhpcyBwaHlzaWNhbCBjaGFubmVsCi0gKiBA
bG9jazogYSBsb2NrIHRvIHVzZSB3aGVuIGFsdGVyaW5nIGFuIGluc3RhbmNlIG9mIHRoaXMgc3Ry
dWN0CiAgKi8KIHN0cnVjdCBvd2xfZG1hX3BjaGFuIHsKIAl1MzIJCQlpZDsKIAl2b2lkIF9faW9t
ZW0JCSpiYXNlOwogCXN0cnVjdCBvd2xfZG1hX3ZjaGFuCSp2Y2hhbjsKLQlzcGlubG9ja190CQls
b2NrOwogfTsKIAogLyoqCkBAIC00MzcsMTQgKzQzNSwxNCBAQCBzdGF0aWMgc3RydWN0IG93bF9k
bWFfcGNoYW4gKm93bF9kbWFfZ2V0X3BjaGFuKHN0cnVjdCBvd2xfZG1hICpvZCwKIAlmb3IgKGkg
PSAwOyBpIDwgb2QtPm5yX3BjaGFuczsgaSsrKSB7CiAJCXBjaGFuID0gJm9kLT5wY2hhbnNbaV07
CiAKLQkJc3Bpbl9sb2NrX2lycXNhdmUoJnBjaGFuLT5sb2NrLCBmbGFncyk7CisJCXNwaW5fbG9j
a19pcnFzYXZlKCZvZC0+bG9jaywgZmxhZ3MpOwogCQlpZiAoIXBjaGFuLT52Y2hhbikgewogCQkJ
cGNoYW4tPnZjaGFuID0gdmNoYW47Ci0JCQlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZwY2hhbi0+
bG9jaywgZmxhZ3MpOworCQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmb2QtPmxvY2ssIGZsYWdz
KTsKIAkJCWJyZWFrOwogCQl9CiAKLQkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcGNoYW4tPmxv
Y2ssIGZsYWdzKTsKKwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmb2QtPmxvY2ssIGZsYWdzKTsK
IAl9CiAKIAlyZXR1cm4gcGNoYW47Ci0tIAoyLjI2LjIKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
