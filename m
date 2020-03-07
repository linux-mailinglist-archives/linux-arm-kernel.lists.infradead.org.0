Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 212CE17C9AF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:26:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDT1xXvfVfQq0tmY39uc6tTiNjNxdoLrGr399BBv/zk=; b=qxT23o3YXLKiQQ
	gltw5J297ycyahWLiJZ0UPB6neg5fjvEDVGDB1HzhN+c2CbgRb8g/h2O+uZN9UaE/WH8a4Lr4Tlln
	QEX5Nea9Nxv8dyjf3rJACNvJB+d72XpSm97SXvg8u7kA+4ZA7F1TECXbnfD95lmZEUHY6oqJKkaIg
	jCO/cyWOjpmBGG6IGwU74icgn2VYiDTzTS9/mFQDcEpN2n7A+rfdtXKotSBuO2kgsqY0WfkmVo10d
	FvSM4Cal8SwlDFR+eaXjdUJKZ7ONfXBvzJ5Oa9CalMsLbHjsvpfq6MCuNG1FO1LRXkaY7y2JOxh4U
	pgUegMp92DySgH8CdK+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANHn-0001ZS-N0; Sat, 07 Mar 2020 00:25:47 +0000
Received: from gateway33.websitewelcome.com ([192.185.145.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANHg-0001YY-9L
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 00:25:42 +0000
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
 by gateway33.websitewelcome.com (Postfix) with ESMTP id 4051A296667
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Mar 2020 18:25:26 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id ANHSjWu49RP4zANHSjtvRG; Fri, 06 Mar 2020 18:25:26 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Vr4PTEIUPfeCVb4sNJAre6LS7Nkwz1QQNQ1S4FDrvE4=; b=LGReLG1daaOJhM5OUM7i1ASloS
 fklYe7+/grF0eeQtMb1b3wscEqx6BcKPMZDTKtD61xpG7DSI14z+i95ln8/U3VamF7zSP0ISB9Dl+
 E9cuwP49jvUNi2bx6CIg6yGf7rL6Rv+lPEYo3ycQC74u3MY/QO0VdGhL2T68ccntZHVG1U9mPnpjP
 80/HWoixgdSsnPyJFW4U2CQLcNmnLnn43nHbRZKKCdRqihFavF6ajjDb42HqVbn9EorkhrwFdGAVt
 cMkTIaLT0fDa8PsoQrC5Ap6aVi6+2nnrHWmfmkWFWFkWGGEylRiic+IasYPFG3aUyOgJA5Av/Vt2f
 M/U3+B6A==;
Received: from [191.31.207.132] (port=48872 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jANHR-001YDM-Nk; Fri, 06 Mar 2020 21:25:26 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v2 0/3] Add Caninos Loucos Labrador CoM and Base Board Device
 Tree
Date: Fri,  6 Mar 2020 21:24:50 -0300
Message-Id: <20200307002453.350430-1-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200229104358.GB19610@mani>
References: <20200229104358.GB19610@mani>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.207.132
X-Source-L: No
X-Exim-ID: 1jANHR-001YDM-Nk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.207.132]:48872
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 3
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_162540_466672_00E46C58 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.145.4 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Matheus Castello <matheus@castello.eng.br>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIE1hbmkgZm9yIHlvdXIgdGltZSByZXZpZXdpbmcgaXQuCgpDaGFuZ2VzIHNpbmNlIHYx
OgooU3VnZ2VzdGVkIGJ5IE1hbml2YW5uYW4gU2FkaGFzaXZhbSkKLSBTb3J0IHRoZSBlbnRyaWVz
IGFscGhhYmV0aWNhbGx5IG9uIE1ha2VmaWxlCi0gQWRkIHRpdGxlIGNvbW1lbnQgdG8gdGhlIGJh
c2UgYm9hcmQgZHRzCi0gUmVtb3ZlIHRoZSBkdC1iaW5kaW5ncy9sZWRzL2NvbW1vbi5oIChnYXJi
YWdlIGZyb20gdGVzdHMsIHNvcnJ5IGFib3V0IHRoYXQpCi0gU3BsaXQgdGhlIHZlbmRvci1wcmVm
aXggYW5kIGRvY3VtZW50YXRpb24gaW4gdHdvIHBhdGNoZXMKCkNhbmlub3MgTG91Y29zIExhYnJh
ZG9yIGlzIGEgQnJhemlsaWFuIHByb2plY3Qgb2Ygb3BlbiBTeXN0ZW0gb24gTW9kdWxlcyBhbmQK
QmFzZSBCb2FyZHMgYmFzZWQgb24gTGVtYWtlciBHdWl0YXIuIElzIGFuIGluaXRpYXRpdmUgb2Yg
TFNJLVRFQyBhIG5vbi1wcm9maXQKb3JnYW5pemF0aW9uLgoKVGhlIExhYnJhZG9yIENvTSB2MiBp
cyBiYXNlZCBvbiBBY3Rpb25zIFNlbWkgUzUwMCBwcm9jZXNzb3Igd2l0aCAxNkdCIGVNTUMgYW5k
CjJHQiBSQU0uCgpUaGlzIHNlcmllcyBhZGRzIHRoZSBpbml0aWFsIHdvcmsgZm9yIGRldmljZSB0
cmVlIGZpbGVzIGFuZCBhbHNvIGFkZHMgdGhlCnZlbmRvci1wcmVmaXggZm9yIHRoZSBDYW5pbm9z
IHByb2dyYW0uIFRoZSB3b3JrIHdhcyBiYXNlZCBvbiB0aGUgQW5kcmVhcyBGw6RyYmVyCmRldmlj
ZSB0cmVlcyBmb3IgTGVtYWtlciBHdWl0YXIsIHRoYW5rcyBBbmRyZWFzLgoKVGVzdGVkIG9uIG15
IENhbmlub3MgTGFicmFkb3IgdjIsIG9ubHkgZWFybHljb24gc2VyaWFsIG91dHB1dCBpcyBhdmFp
bGFibGUgZm9yCm5vdywgdXNpbmcgdGhlIGZha2UgY2xvY2suIEkgaGF2ZSBhbHJlYWR5IHdvcmtl
ZCBvbiBzb21ldGhpbmcgaGVyZSB0byBhZGQgdGhlCmNsb2NrcyBhbmQgcGluY3RybCBub2RlcyB0
byBvd2wtczUwMC5kdHNpLCBidXQgSSB3b3VsZCBsaWtlIHRvIGZpcnN0IGFkZCB0aGUKaW5pdGlh
bCBkZXZpY2UgdHJlZSBmaWxlcyBhbmQgdGhlbiB3b3JrIG9uIHRoZSBvdGhlciBwYXRjaGVzIGNh
bG1seS4KCkJSLApNYXRoZXVzIENhc3RlbGxvCgpNYXRoZXVzIENhc3RlbGxvICgzKToKICBkdC1i
aW5kaW5nczogQWRkIHZlbmRvciBwcmVmaXggZm9yIENhbmlub3MgTG91Y29zCiAgZHQtYmluZGlu
Z3M6IGFybTogYWN0aW9uczogRG9jdW1lbnQgQ2FuaW5vcyBMb3Vjb3MgTGFicmFkb3IKICBBUk06
IGR0czogQWRkIENhbmlub3MgTG91Y29zIExhYnJhZG9yCgogLi4uL2RldmljZXRyZWUvYmluZGlu
Z3MvYXJtL2FjdGlvbnMueWFtbCAgICAgIHwgIDUgKysrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy92ZW5kb3ItcHJlZml4ZXMueWFtbCAgfCAgMiArKwogYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZp
bGUgICAgICAgICAgICAgICAgICAgIHwgIDEgKwogYXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAt
bGFicmFkb3ItYmIuZHRzICAgIHwgMzQgKysrKysrKysrKysrKysrKysrKwogYXJjaC9hcm0vYm9v
dC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItdjIuZHRzaSAgIHwgMjEgKysrKysrKysrKysrCiA1IGZp
bGVzIGNoYW5nZWQsIDYzIGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci1iYi5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci12Mi5kdHNpCgotLQoyLjI1LjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
