Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C45A17C9B2
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 01:26:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyIal4PbuD7qBR7X3voAAJJepUIhKT3EU8B+lDvYsYs=; b=BV4ddT8b1hasM/
	fYXe+257DQTHEhcZpx5SoDQeY3Hbyzje2I7H0M0ztIsp3XMqfnE4T32JsuEwQpiET1+kCFwQqobch
	TwQl9qRJh3USeq0VuHJWXpNk/KZW0p+CDOS3A9tadE9Bfnnsq7YYTKuzKA0GziXj/o8aG17Sbnkvy
	ZcrRLsniebB3rnioZFfLQrXLO8Zbfk18q2HxsLCrkXyKffsvfB4pC8A9n1r6Wz4E6n3q3fG8J4idZ
	s9jkGklqCEaDoITgz5FhYixDd7BdNS+W4oLUbZquwuGDHwLe5gXEzGriSo9l7RNJ5iqljxMu3QOrY
	NDceCKZH6YtA+Ufre+Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jANIJ-00023G-Mp; Sat, 07 Mar 2020 00:26:19 +0000
Received: from gateway24.websitewelcome.com ([192.185.51.61])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jANI9-00021z-RC
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Mar 2020 00:26:11 +0000
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
 by gateway24.websitewelcome.com (Postfix) with ESMTP id 6F7629ED1D
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Mar 2020 18:26:08 -0600 (CST)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id ANI8j8R8ISl8qANI8jkRiJ; Fri, 06 Mar 2020 18:26:08 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=msXgc3TGQhw2fSPO6AXY+2RmKkB9onA2Nue9cLwXGQI=; b=hzsuDJzqHrn7CrKIhYBOffx5FB
 reovpBTHdQE0LIYla3E2AySPD7mJ957Nl/JTwPDB2xijwvGHSAAe+duO1JNfGW+Jcwl393c4S/uUd
 fJrrkmUgxY9Vrkw3J5IknOlGwWoR3VtO57uvpSOQcoim+2raXEDOpkfoiV3lb9NlS/aBZvlXWlOd6
 GAbJ39Eg6TEt1JjeEDeY8xNEJivr7Zcj2t2gVPdbmC3D1zEsm7UxYQAVMp2vhYBWNGL+JUFszd4q9
 gizZrCZJ93q4ZQy/RAR3h7P5IvyL6JnB77kjnY1KDoN4oLaSANkxUJsStUEqKprNnUy62SWePA+7x
 5RtjdTOg==;
Received: from [191.31.207.132] (port=48872 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jANI7-001YDM-Ri; Fri, 06 Mar 2020 21:26:08 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v2 3/3] ARM: dts: Add Caninos Loucos Labrador
Date: Fri,  6 Mar 2020 21:24:53 -0300
Message-Id: <20200307002453.350430-4-matheus@castello.eng.br>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200307002453.350430-1-matheus@castello.eng.br>
References: <20200229104358.GB19610@mani>
 <20200307002453.350430-1-matheus@castello.eng.br>
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
X-Exim-ID: 1jANI7-001YDM-Ri
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.207.132]:48872
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 27
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_162609_987856_1F08D33A 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.51.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

QWRkIERldmljZSBUcmVlcyBmb3IgQ2FuaW5vcyBMb3Vjb3MgTGFicmFkb3IgQ29NIGFuZCBiYXNl
IGJvYXJkLgpCYXNlZCBvbiB0aGUgd29yayBvZiBBbmRyZWFzIEbDpHJiZXIgb24gTGVtYWtlciBH
dWl0YXIgZGV2aWNlIHRyZWUuCgpTaWduZWQtb2ZmLWJ5OiBNYXRoZXVzIENhc3RlbGxvIDxtYXRo
ZXVzQGNhc3RlbGxvLmVuZy5icj4KLS0tCiBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAg
ICAgICAgICAgICAgIHwgIDEgKwogYXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFicmFkb3It
YmIuZHRzICB8IDM0ICsrKysrKysrKysrKysrKysrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvb3ds
LXM1MDAtbGFicmFkb3ItdjIuZHRzaSB8IDIxICsrKysrKysrKysrKysKIDMgZmlsZXMgY2hhbmdl
ZCwgNTYgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRz
L293bC1zNTAwLWxhYnJhZG9yLWJiLmR0cwogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jv
b3QvZHRzL293bC1zNTAwLWxhYnJhZG9yLXYyLmR0c2kKCmRpZmYgLS1naXQgYS9hcmNoL2FybS9i
b290L2R0cy9NYWtlZmlsZSBiL2FyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlCmluZGV4IGQ2NTQ2
ZDI2NzZiOS4uOTlmNjMzNDYwODMzIDEwMDY0NAotLS0gYS9hcmNoL2FybS9ib290L2R0cy9NYWtl
ZmlsZQorKysgYi9hcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZQpAQCAtODQyLDYgKzg0Miw3IEBA
IGR0Yi0kKENPTkZJR19BUkNIX09SSU9ONVgpICs9IFwKIGR0Yi0kKENPTkZJR19BUkNIX0FDVElP
TlMpICs9IFwKIAlvd2wtczUwMC1jdWJpZWJvYXJkNi5kdGIgXAogCW93bC1zNTAwLWd1aXRhci1i
Yi1yZXYtYi5kdGIgXAorCW93bC1zNTAwLWxhYnJhZG9yLWJiLmR0YiBcCiAJb3dsLXM1MDAtc3Bh
cmt5LmR0YgogZHRiLSQoQ09ORklHX0FSQ0hfUFJJTUEyKSArPSBcCiAJcHJpbWEyLWV2Yi5kdGIK
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL293bC1zNTAwLWxhYnJhZG9yLWJiLmR0cyBi
L2FyY2gvYXJtL2Jvb3QvZHRzL293bC1zNTAwLWxhYnJhZG9yLWJiLmR0cwpuZXcgZmlsZSBtb2Rl
IDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjkxMDEyYjRhNGMzMAotLS0gL2Rldi9udWxsCisr
KyBiL2FyY2gvYXJtL2Jvb3QvZHRzL293bC1zNTAwLWxhYnJhZG9yLWJiLmR0cwpAQCAtMCwwICsx
LDM0IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjArIE9SIE1JVCkKKy8q
CisgKiBDYW5pbm9zIExhYnJhZG9yIEJhc2UgQm9hcmQKKyAqCisgKiBDb3B5cmlnaHQgKGMpIDIw
MTktMjAyMCBNYXRoZXVzIENhc3RlbGxvCisgKi8KKworL2R0cy12MS87CisKKyNpbmNsdWRlICJv
d2wtczUwMC1sYWJyYWRvci12Mi5kdHNpIgorCisvIHsKKwljb21wYXRpYmxlID0gImNhbmlub3Ms
bGFicmFkb3ItYmIiLCAiY2FuaW5vcyxsYWJyYWRvciIsICJhY3Rpb25zLHM1MDAiOworCW1vZGVs
ID0gIkNhbmlub3MgTGFicmFkb3IgQmFzZSBCb2FyZCBNIHYxLjAiOworCisJYWxpYXNlcyB7CisJ
CXNlcmlhbDMgPSAmdWFydDM7CisJfTsKKworCWNob3NlbiB7CisJCXN0ZG91dC1wYXRoID0gInNl
cmlhbDM6MTE1MjAwbjgiOworCX07CisKKwl1YXJ0M19jbGs6IHVhcnQzLWNsayB7CisJCWNvbXBh
dGlibGUgPSAiZml4ZWQtY2xvY2siOworCQljbG9jay1mcmVxdWVuY3kgPSA8OTIxNjAwPjsKKwkJ
I2Nsb2NrLWNlbGxzID0gPDA+OworCX07Cit9OworCismdWFydDMgeworCXN0YXR1cyA9ICJva2F5
IjsKKwljbG9ja3MgPSA8JnVhcnQzX2Nsaz47Cit9OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9v
dC9kdHMvb3dsLXM1MDAtbGFicmFkb3ItdjIuZHRzaSBiL2FyY2gvYXJtL2Jvb3QvZHRzL293bC1z
NTAwLWxhYnJhZG9yLXYyLmR0c2kKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi4wYjU0ZjFlZjNlYzAKLS0tIC9kZXYvbnVsbAorKysgYi9hcmNoL2FybS9ib290L2R0cy9v
d2wtczUwMC1sYWJyYWRvci12Mi5kdHNpCkBAIC0wLDAgKzEsMjEgQEAKKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQorLyoKKyAqIENhbmlub3MgTGFicmFkb3Ig
Q29NIFYyCisgKgorICogQ29weXJpZ2h0IChjKSAyMDE5LTIwMjAgTWF0aGV1cyBDYXN0ZWxsbwor
ICovCisKKyNpbmNsdWRlICJvd2wtczUwMC5kdHNpIgorCisvIHsKKwljb21wYXRpYmxlID0gImNh
bmlub3MsbGFicmFkb3IiLCAiYWN0aW9ucyxzNTAwIjsKKworCW1lbW9yeUAwIHsKKwkJZGV2aWNl
X3R5cGUgPSAibWVtb3J5IjsKKwkJcmVnID0gPDB4MCAweDgwMDAwMDAwPjsKKwl9OworfTsKKwor
JnRpbWVyIHsKKwljbG9ja3MgPSA8Jmhvc2M+OworfTsKLS0KMi4yNS4wCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
