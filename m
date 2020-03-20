Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8114818C624
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 04:52:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euJ61Ll5PrfPjWgdm053woKAWFL9Rx+BN8CNyz0xPcs=; b=bq1xwbJSY3N4h4
	CHy3ap1GYKxTNs0xb1wTFgBqpOP9XDyvZDITVGT/7E6LbXb3bHEvaNjLitGiUymnTZ6U8o/fU0BT5
	hv2vzteYlMU70VniRtO2eMG6tort/jhcWiyu1IaGtCitlFhZ9Ca64oBFhzwOVlKfRpbzkMbzBHZZq
	9lkWnDhzV+nEAmaNWluydBDVHgpcLau8KqnvGg8fyG9HjzhAlgUvu9oYz+MbRBzlgWe18uQvUq4x4
	vqsR8hGDpa/2n7SxONmaivtnOg9TOyxQlDofmBFFkGexutdUaOHYe3nsJ6M4EVRqVbJbChOCPeV4m
	1t+MThSSM/SdBV47uMtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF8hi-0002oW-8a; Fri, 20 Mar 2020 03:52:14 +0000
Received: from gateway23.websitewelcome.com ([192.185.48.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF8hY-0002n4-Fx
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 03:52:05 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway23.websitewelcome.com (Postfix) with ESMTP id EEF41755C
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 22:51:49 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id F8hJjI1cxEfyqF8hJjI0aC; Thu, 19 Mar 2020 22:51:49 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AmW9KW6fyjVw/q4SNibq40anvInSMWalfJcTk2nYiAE=; b=z6WhGAWiAO6VWX8phU39p6TPAq
 e+V2aJqbqB9wpKxiKKk8BW1rGrWRU71/f2cKESjtnY8wCd5MKHyBS4/nBXeV1/N5lL3u36T8IzjAN
 bEdTtpwPV3pJWBhhGDGJXWuoJtwmWCc+iXNDhgaqVQlyZMjct/2ieZoaygxa6YFizVzAsO36OY53h
 4dlBtil9T76JS1KTM3bDqkNaC7F/o6SmPO262JpgOr2YOQ01fv3wYKxtcKgHLMF9scMytQS6pxWZG
 wa2lgtpsg8YTmksCu+UPsVqnR7dE/CTPLCmJTdHACxcDNFLUDIBfnalbsx1FOLdQo2MSnKpg7FK3a
 9h+2YJkw==;
Received: from [191.31.203.148] (port=48890 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jF8hJ-000OUT-A5; Fri, 20 Mar 2020 00:51:49 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v3 0/3] Add Caninos Loucos Labrador CoM and Base Board Device
 Tree
Date: Fri, 20 Mar 2020 00:51:01 -0300
Message-Id: <20200320035104.26139-1-matheus@castello.eng.br>
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
X-Source-IP: 191.31.203.148
X-Source-L: No
X-Exim-ID: 1jF8hJ-000OUT-A5
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.203.148]:48890
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 4
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_205204_620096_B27442E3 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.48.84 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Matheus Castello <matheus@castello.eng.br>,
 linux-kernel@vger.kernel.org, igor.lima@lsitec.org.br,
 edgar.righi@lsitec.org.br, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIEFuZHJlYXMgYW5kIE1hbmkgZm9yIHlvdXIgdGltZSByZXZpZXdpbmcgaXQuCgpDaGFu
Z2VzIHNpbmNlIHYyOgooU3VnZ2VzdGVkIGJ5IEFuZHJlYXMgRsOkcmJlcikKLSBTb3J0IHRoZSBl
bnRyaWVzIGFscGhhYmV0aWNhbGx5IG9uIHZlbmRvci1wcmVmaXhlcy55YW1sCi0gSW1wcm92ZSBj
b21taXQgZGVzY3JpcHRpb24KLSBBZGQgRWRnYXIgQmVybmFyZGkgUmlnaGkgYW5kIElnb3IgUnVz
Y2hpIGZyb20gQ2FuaW5vcyB0ZWFtIGFzIENDCgpDaGFuZ2VzIHNpbmNlIHYxOgooU3VnZ2VzdGVk
IGJ5IE1hbml2YW5uYW4gU2FkaGFzaXZhbSkKLSBTb3J0IHRoZSBlbnRyaWVzIGFscGhhYmV0aWNh
bGx5IG9uIE1ha2VmaWxlCi0gQWRkIHRpdGxlIGNvbW1lbnQgdG8gdGhlIGJhc2UgYm9hcmQgZHRz
Ci0gUmVtb3ZlIHRoZSBkdC1iaW5kaW5ncy9sZWRzL2NvbW1vbi5oIChnYXJiYWdlIGZyb20gdGVz
dHMsIHNvcnJ5IGFib3V0IHRoYXQpCi0gU3BsaXQgdGhlIHZlbmRvci1wcmVmaXggYW5kIGRvY3Vt
ZW50YXRpb24gaW4gdHdvIHBhdGNoZXMKCkNhbmlub3MgTG91Y29zIExhYnJhZG9yIGlzIGEgQnJh
emlsaWFuIHByb2plY3Qgb2Ygb3BlbiBTeXN0ZW0gb24gTW9kdWxlcyBhbmQKQmFzZSBCb2FyZHMg
YmFzZWQgb24gTGVtYWtlciBHdWl0YXIuIElzIGFuIGluaXRpYXRpdmUgb2YgTFNJLVRFQyBhIG5v
bi1wcm9maXQKb3JnYW5pemF0aW9uLgoKVGhlIExhYnJhZG9yIENvTSB2MiBpcyBiYXNlZCBvbiBB
Y3Rpb25zIFNlbWkgUzUwMCBwcm9jZXNzb3Igd2l0aCAxNkdCIGVNTUMgYW5kCjJHQiBSQU0uCgpU
aGlzIHNlcmllcyBhZGRzIHRoZSBpbml0aWFsIHdvcmsgZm9yIGRldmljZSB0cmVlIGZpbGVzIGFu
ZCBhbHNvIGFkZHMgdGhlCnZlbmRvci1wcmVmaXggZm9yIHRoZSBDYW5pbm9zIHByb2dyYW0uIFRo
ZSB3b3JrIHdhcyBiYXNlZCBvbiB0aGUgQW5kcmVhcyBGw6RyYmVyCmRldmljZSB0cmVlcyBmb3Ig
TGVtYWtlciBHdWl0YXIsIHRoYW5rcyBBbmRyZWFzLgoKVGVzdGVkIG9uIG15IENhbmlub3MgTGFi
cmFkb3IgdjIsIG9ubHkgZWFybHljb24gc2VyaWFsIG91dHB1dCBpcyBhdmFpbGFibGUgZm9yCm5v
dywgdXNpbmcgdGhlIGZha2UgY2xvY2suIEkgaGF2ZSBhbHJlYWR5IHdvcmtlZCBvbiBzb21ldGhp
bmcgaGVyZSB0byBhZGQgdGhlCmNsb2NrcyBhbmQgcGluY3RybCBub2RlcyB0byBvd2wtczUwMC5k
dHNpLCBidXQgSSB3b3VsZCBsaWtlIHRvIGZpcnN0IGFkZCB0aGUKaW5pdGlhbCBkZXZpY2UgdHJl
ZSBmaWxlcyBhbmQgdGhlbiB3b3JrIG9uIHRoZSBvdGhlciBwYXRjaGVzIGNhbG1seS4KClN0YXkg
c2FmZSwKTWF0aGV1cyBDYXN0ZWxsbwoKTWF0aGV1cyBDYXN0ZWxsbyAoMyk6CiAgZHQtYmluZGlu
Z3M6IEFkZCB2ZW5kb3IgcHJlZml4IGZvciBDYW5pbm9zIExvdWNvcwogIGR0LWJpbmRpbmdzOiBh
cm06IGFjdGlvbnM6IERvY3VtZW50IENhbmlub3MgTG91Y29zIExhYnJhZG9yCiAgQVJNOiBkdHM6
IEFkZCBDYW5pbm9zIExvdWNvcyBMYWJyYWRvcgoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9hY3Rpb25zLnlhbWwgICAgICB8ICA1ICsrKwogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdmVu
ZG9yLXByZWZpeGVzLnlhbWwgIHwgIDIgKysKIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAg
ICAgICAgICAgICAgICAgICB8ICAxICsKIGFyY2gvYXJtL2Jvb3QvZHRzL293bC1zNTAwLWxhYnJh
ZG9yLWJiLmR0cyAgICB8IDM0ICsrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRz
L293bC1zNTAwLWxhYnJhZG9yLXYyLmR0c2kgICB8IDIxICsrKysrKysrKysrKwogNSBmaWxlcyBj
aGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9v
dC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItYmIuZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItdjIuZHRzaQoKLS0KMi4yNS4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
