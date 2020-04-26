Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E6A1B91E6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 Apr 2020 18:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+FdjTC2/zG+wt5tYKmMKkVrRUxhHHjI6/nbu33j32s=; b=qUslxn8Yup9+IF
	h2xYAMU3hm/srZ0BhRYt09PBi9FljLOo7vea+DWXjhfh8NzQwm4qbnhZI3VKzrhYyJ5FKpHuzfqAJ
	E1U7YEv3FrEVeMHdOJjbl9mBW54XropAQVHT/r6H8vIC2DBlr+QGevHVOv+L9bc5a655SuIZEa5WS
	pWToTa1/C35tXNJl9ivjddvEVEaT3fVaYemubjrAijvxEe8W8/dP7zGnO2ZD0/UFashw/8fu1FwiR
	EDtomH4QUdGZlLsi94KScUXiIzaGc4+33fX+AssuE2N1t3qEpXvW9HdrJvSp2OKS3nucPBQlEy/9b
	cmTyXTQ/cxfVM7IvVFVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSkcK-00057d-43; Sun, 26 Apr 2020 16:58:56 +0000
Received: from gateway34.websitewelcome.com ([192.185.148.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSkcE-00056m-LB
 for linux-arm-kernel@lists.infradead.org; Sun, 26 Apr 2020 16:58:52 +0000
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id EB2012FB1749
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 Apr 2020 11:58:47 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id SkcBjvkZVXVkQSkcBj5vA6; Sun, 26 Apr 2020 11:58:47 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3afp7XxE1GlxY/Ju1j3y2JMSguq9JL32ykPeH5k4AAE=; b=e8A/1clUau5xhwJsVZL/XinyHG
 K+NKJwhcDIzLEepjZNEnvkt07zus5UaGa8Gwvkv24REMgFQapaFmx4O0A2Ptmi96gDizht5r/Dh00
 g5/TTyU3Z6QYEdDaf2snZ1eAmeqjL8IPFdrySd3U6YiXmnZPRJi3w597ivbbSaBIjitrcXpqK4mZx
 DbQ27XappymmQ2+AidWd+M+ebvUuCdEgpnXGyHJkr8WzGMADrOMJPKo0xOwfY8Vgu8Wlk+DCCRG8o
 3IMlCWyMMQaH1/64dBZ407bRGK0Ps9kBjsoJnmb4zMJCS15aJdMGDXQNohclyc2sxt6Wt03aK482c
 36fD6CLA==;
Received: from [191.31.197.205] (port=35482 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jSkcB-001TTf-BY; Sun, 26 Apr 2020 13:58:47 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v4 0/3] Add Caninos Loucos Labrador CoM and Base Board Device
 Tree
Date: Sun, 26 Apr 2020 13:58:32 -0300
Message-Id: <20200426165835.105970-1-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <f9e48fba-0da8-7ba9-d44a-7909067a1df1@castello.eng.br>
References: <f9e48fba-0da8-7ba9-d44a-7909067a1df1@castello.eng.br>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.197.205
X-Source-L: No
X-Exim-ID: 1jSkcB-001TTf-BY
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.197.205]:35482
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 17
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_095850_787729_5BFE2379 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.148.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Matheus Castello <matheus@castello.eng.br>,
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 igor.lima@lsitec.org.br, edgar.righi@lsitec.org.br,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhhbmtzIEFuZHJlYXMsIE1hbmkgYW5kIFJvYiBmb3IgeW91ciB0aW1lIHJldmlld2luZyBpdC4K
CkNoYW5nZXMgc2luY2UgdjM6CihTdWdnZXN0ZWQgYnkgQW5kcmVhcyBGw6RyYmVyKQotIEZpeCBz
b3J0IG9uIGFjdGlvbnMueWFtbAotIENoYW5nZSB0aGUgZmlsZSBvd2wtczUwMC1sYWJyYWRvci1i
Yi5kdHMgdG8gb3dsLXM1MDAtbGFicmFkb3ItYmFzZS1tLmR0cwotIEFkZCBkZXNjcmlwdGlvbiBm
b3IgYm90aCB0aGUgU29NIGFuZCBCYXNlIEJvYXJkCi0gQWRkIE1vZGVsIGRlc2NyaXB0aW9uIGZv
ciBib3RoIHRoZSBTb00gYW5kIEJhc2UgQm9hcmQKCkNoYW5nZXMgc2luY2UgdjI6CihTdWdnZXN0
ZWQgYnkgQW5kcmVhcyBGw6RyYmVyKQotIFNvcnQgdGhlIGVudHJpZXMgYWxwaGFiZXRpY2FsbHkg
b24gdmVuZG9yLXByZWZpeGVzLnlhbWwKLSBJbXByb3ZlIGNvbW1pdCBkZXNjcmlwdGlvbgotIEFk
ZCBFZGdhciBCZXJuYXJkaSBSaWdoaSBhbmQgSWdvciBSdXNjaGkgZnJvbSBDYW5pbm9zIHRlYW0g
YXMgQ0MKCkNhbmlub3MgTG91Y29zIExhYnJhZG9yIGlzIGEgQnJhemlsaWFuIHByb2plY3Qgb2Yg
b3BlbiBTeXN0ZW0gb24gTW9kdWxlcyBhbmQKQmFzZSBCb2FyZHMgYmFzZWQgb24gTGVtYWtlciBH
dWl0YXIuIElzIGFuIGluaXRpYXRpdmUgb2YgTFNJLVRFQyBhIG5vbi1wcm9maXQKb3JnYW5pemF0
aW9uLgoKVGhlIExhYnJhZG9yIENvTSB2MiBpcyBiYXNlZCBvbiBBY3Rpb25zIFNlbWkgUzUwMCBw
cm9jZXNzb3Igd2l0aCAxNkdCIGVNTUMgYW5kCjJHQiBSQU0uCgpUaGlzIHNlcmllcyBhZGRzIHRo
ZSBpbml0aWFsIHdvcmsgZm9yIGRldmljZSB0cmVlIGZpbGVzIGFuZCBhbHNvIGFkZHMgdGhlCnZl
bmRvci1wcmVmaXggZm9yIHRoZSBDYW5pbm9zIHByb2dyYW0uIFRoZSB3b3JrIHdhcyBiYXNlZCBv
biB0aGUgQW5kcmVhcyBGw6RyYmVyCmRldmljZSB0cmVlcyBmb3IgTGVtYWtlciBHdWl0YXIsIHRo
YW5rcyBBbmRyZWFzLgoKVGVzdGVkIG9uIG15IENhbmlub3MgTGFicmFkb3IgdjIsIG9ubHkgZWFy
bHljb24gc2VyaWFsIG91dHB1dCBpcyBhdmFpbGFibGUgZm9yCm5vdywgdXNpbmcgdGhlIGZha2Ug
Y2xvY2suIEkgaGF2ZSBhbHJlYWR5IHdvcmtlZCBvbiBzb21ldGhpbmcgaGVyZSB0byBhZGQgdGhl
CmNsb2NrcyBhbmQgcGluY3RybCBub2RlcyB0byBvd2wtczUwMC5kdHNpLCBidXQgSSB3b3VsZCBs
aWtlIHRvIGZpcnN0IGFkZCB0aGUKaW5pdGlhbCBkZXZpY2UgdHJlZSBmaWxlcyBhbmQgdGhlbiB3
b3JrIG9uIHRoZSBvdGhlciBwYXRjaGVzIGNhbG1seS4KClN0YXkgc2FmZSwKTWF0aGV1cyBDYXN0
ZWxsbwoKTWF0aGV1cyBDYXN0ZWxsbyAoMyk6CiAgZHQtYmluZGluZ3M6IEFkZCB2ZW5kb3IgcHJl
Zml4IGZvciBDYW5pbm9zIExvdWNvcwogIGR0LWJpbmRpbmdzOiBhcm06IGFjdGlvbnM6IERvY3Vt
ZW50IENhbmlub3MgTG91Y29zIExhYnJhZG9yCiAgQVJNOiBkdHM6IEFkZCBDYW5pbm9zIExvdWNv
cyBMYWJyYWRvcgoKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9hY3Rpb25zLnlhbWwgICAg
ICB8IDExICsrKystLQogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlh
bWwgIHwgIDIgKysKIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAgICAg
ICB8ICAxICsKIC4uLi9hcm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItYmFzZS1tLmR0cyB8
IDM0ICsrKysrKysrKysrKysrKysrKysKIGFyY2gvYXJtL2Jvb3QvZHRzL293bC1zNTAwLWxhYnJh
ZG9yLXYyLmR0c2kgICB8IDIyICsrKysrKysrKysrKwogNSBmaWxlcyBjaGFuZ2VkLCA2NyBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jv
b3QvZHRzL293bC1zNTAwLWxhYnJhZG9yLWJhc2UtbS5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci12Mi5kdHNpCgotLQoyLjI1LjAKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
