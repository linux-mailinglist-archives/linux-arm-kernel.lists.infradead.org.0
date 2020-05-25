Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B97721E0F5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 15:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kRBMYgvwvJGdsMv0WE07hwTNtbNdkmN+WyPqmEQ9Tc4=; b=P3FpEVQ5B9T7oK
	uIBs+q54FBauV/zaZ+iR+GSk2yN0xsZpWHpqNuEQnGY/Y6ZHHsBcJo8XJ3yxQORnO97r2Ah7Lk6zy
	/Q0LeqnUEWHEhVkW8RHP7QGWqzX1modPAIs/t/c1BEAkX4Y72NrAB2aayP2Ue/khlRSVcXz3pXJzz
	XaBdiiariRtta6RcDH7RcbFoCyL9j9m8B/ttcHWp6/sttxFif2wnDSOovUWY3udQlNvjkJi0v5A/I
	Eyvb89LZlFxX0ntMVfiPcrypZmEznY4DZMErnBbyU0ZH5VkjzPwozNSduWo7rQoC+PoyCJHZ3lzhc
	Dgyg0dyc/fyzbSA0YynQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdD4Y-0003dl-Nc; Mon, 25 May 2020 13:23:18 +0000
Received: from gateway24.websitewelcome.com ([192.185.51.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdD4P-0003cg-K1
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 13:23:10 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway24.websitewelcome.com (Postfix) with ESMTP id E131215DB
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 25 May 2020 08:23:03 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id dD4JjGYJeEfyqdD4JjxE95; Mon, 25 May 2020 08:23:03 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZlJcRTFhtej8T0UtBWcokFIRDI/JzVylWnvucohUJ7A=; b=vq9aRPShyuaIeDESHTZHBzkl6j
 AMEjiAKwtKeXVMqK61TH7ofchoit4SpmFWiSxFH5R9SVl7tPcvjbJLXZf+JtRYsafI6OuB6IgXMsS
 egrlfjFI0w92Abhq2YKc9vrLkJbye31UNLxHWzFyYF8+899in3kYEGy9Rx7nMXZlD69915Oz9T/F4
 OhWJmUD7Lv+YfHJBHs6gdiMYTCijtmFoweNen3f1PAuQT0VpVDqCov4OV1tQtcuRazAL2YrKZR/NJ
 8MGLhpU/ViE1nDlPMJfBJ/LIczL6H7gCQ9eBmnjRxtYWUEel/PnN7xlSPVrrIWEpfSXw3eQLa7VAb
 Er3uZEVA==;
Received: from [191.31.196.240] (port=46922 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jdD4I-002bEq-71; Mon, 25 May 2020 10:23:02 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v6 0/3] Add Caninos Loucos Labrador CoM and Base Board Device
 Tree
Date: Mon, 25 May 2020 10:22:15 -0300
Message-Id: <20200525132218.190841-1-matheus@castello.eng.br>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.196.240
X-Source-L: No
X-Exim-ID: 1jdD4I-002bEq-71
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.196.240]:46922
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 4
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_062309_703479_FCFC7BB1 
X-CRM114-Status: UNSURE (   4.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.51.36 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [192.185.51.36 listed in wl.mailspike.net]
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
CkNoYW5nZXMgc2luY2UgdjU6CihTdWdnZXN0ZWQgYnkgQW5kcmVhcyBGw6RyYmVyKQotIFB1dCBj
YW5pbm9zLGxhYnJhZG9yLXYyIGFzIGNvbnN0IG9uZSBsZXZlbCBkb3duCgpDaGFuZ2VzIHNpbmNl
IHY0OgooU3VnZ2VzdGVkIGJ5IFJvYiBIZXJyaW5nKQotIEZpeCBpc3N1ZXMgd2l0aCB5YW1sIGlu
ZGVudGF0aW9uCgpNYXRoZXVzIENhc3RlbGxvICgzKToKICBkdC1iaW5kaW5nczogQWRkIHZlbmRv
ciBwcmVmaXggZm9yIENhbmlub3MgTG91Y29zCiAgZHQtYmluZGluZ3M6IGFybTogYWN0aW9uczog
RG9jdW1lbnQgQ2FuaW5vcyBMb3Vjb3MgTGFicmFkb3IKICBBUk06IGR0czogQWRkIENhbmlub3Mg
TG91Y29zIExhYnJhZG9yCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL2FjdGlvbnMueWFt
bCAgICAgIHwgIDUgKysrCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMu
eWFtbCAgfCAgMiArKwogYXJjaC9hcm0vYm9vdC9kdHMvTWFrZWZpbGUgICAgICAgICAgICAgICAg
ICAgIHwgIDEgKwogLi4uL2FybS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci1iYXNlLW0uZHRz
IHwgMzQgKysrKysrKysrKysrKysrKysrKwogYXJjaC9hcm0vYm9vdC9kdHMvb3dsLXM1MDAtbGFi
cmFkb3ItdjIuZHRzaSAgIHwgMjIgKysrKysrKysrKysrCiA1IGZpbGVzIGNoYW5nZWQsIDY0IGlu
c2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9vd2wtczUw
MC1sYWJyYWRvci1iYXNlLW0uZHRzCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9k
dHMvb3dsLXM1MDAtbGFicmFkb3ItdjIuZHRzaQoKLS0KMi4yNi4yCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
