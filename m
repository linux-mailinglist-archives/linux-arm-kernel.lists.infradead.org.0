Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0743B1E046B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 03:30:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sA1N5Ar91W6CiSz3XlgmVd7s9tWgEl+RuR6qbcb2KFc=; b=MafQIyVK9OyBMH
	vW3QmWK0naTDYdNQ6Mq43FkfktEAeXUWbvf6cVyGm/sSFXzsdLRcaVQy+EzyYHSP1NFvR8cheYM3f
	V9dHAVe8jQjbkqKnFPVsAInGTilV868q+d6Ao8QhOUo2nIMZWumcKkxrOZ3OAwMJSGVvKt4SyOt9Z
	+8YKRAkH7yO/ZUXcsU5WWok8MsLo8itq4Orvjts+q3K/ZD0XYNTSra9nuHTwgyG6ximZYAW/oTmFK
	7QbQJ/OqGrzgw89rEPbaXuarwx9DyZgnNxwqdgovxXjsn4a6GoYYmL7v9OKQko5RToWqpAz7Ieglk
	bhqEuBs8YnaVpm6wYEBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd1x0-0007Ag-AU; Mon, 25 May 2020 01:30:46 +0000
Received: from gateway33.websitewelcome.com ([192.185.146.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd1wr-00079S-UD
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 01:30:39 +0000
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
 by gateway33.websitewelcome.com (Postfix) with ESMTP id D74F091580B
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 May 2020 20:30:21 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180]) by cmsmtp with SMTP
 id d1wbjZnfrAGTXd1wbjmm6b; Sun, 24 May 2020 20:30:21 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qyCTWA8alWH3T1OHxtqJqh8fX9ZMRzay2l/chLycdQ8=; b=DjVcPAoGwpjHhJk9TrOvDCpKVf
 jXKI0r2K8HNoSNHSe4EqDW6qZZDhs+Mr5WcqDss632tc5TxaUzLYBJmiSwNVGTgLd7Ef67aDKlXwR
 MTq2OXMn2bzE03r6xMGH3WhTvayuHz5HoJBj718I1j/XSV5J+FoCSzaE7TyMxan8LaLbkWQjdqZmh
 TYOCx1acl0DD9YYAEBwOfwYQsA8xh9PkZ8JRAogjrNyhWCv2pr3u4CCPzSn+OFjKvNGoNmCGIxl5m
 SXznW2rLj8z0G2Z1sCsHgmiQV13pQtNJMHMqnEMvUa+ghIHg9/paOw1yiScvuLMBP+r+rN0AMVI9J
 Kevli81A==;
Received: from [191.31.196.240] (port=34284 helo=castello.castello)
 by br164.hostgator.com.br with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92)
 (envelope-from <matheus@castello.eng.br>)
 id 1jd1wb-004Dik-8u; Sun, 24 May 2020 22:30:21 -0300
From: Matheus Castello <matheus@castello.eng.br>
To: afaerber@suse.de, manivannan.sadhasivam@linaro.org, mark.rutland@arm.com,
 robh+dt@kernel.org
Subject: [PATCH v5 0/3] Add Caninos Loucos Labrador CoM and Base Board Device
 Tree
Date: Sun, 24 May 2020 22:30:05 -0300
Message-Id: <20200525013008.108750-1-matheus@castello.eng.br>
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
X-Exim-ID: 1jd1wb-004Dik-8u
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.196.240]:34284
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 4
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_183038_070980_42D66496 
X-CRM114-Status: UNSURE (   5.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.146.82 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
 igor.lima@lsitec.org.br, edgar.righi@lsitec.org.br,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

U29ycnkgZm9yIHRoZSBkZWxheS4KVGhhbmtzIEFuZHJlYXMsIE1hbmkgYW5kIFJvYiBmb3IgeW91
ciB0aW1lIHJldmlld2luZyBpdC4KCkNoYW5nZXMgc2luY2UgdjQ6CihTdWdnZXN0ZWQgYnkgUm9i
IEhlcnJpbmcpCi0gRml4IGlzc3VlcyB3aXRoIHlhbWwgaW5kZW50YXRpb24KCkNoYW5nZXMgc2lu
Y2UgdjM6CihTdWdnZXN0ZWQgYnkgQW5kcmVhcyBGw6RyYmVyKQotIEZpeCBzb3J0IG9uIGFjdGlv
bnMueWFtbAotIENoYW5nZSB0aGUgZmlsZSBvd2wtczUwMC1sYWJyYWRvci1iYi5kdHMgdG8gb3ds
LXM1MDAtbGFicmFkb3ItYmFzZS1tLmR0cwotIEFkZCBkZXNjcmlwdGlvbiBmb3IgYm90aCB0aGUg
U29NIGFuZCBCYXNlIEJvYXJkCi0gQWRkIE1vZGVsIGRlc2NyaXB0aW9uIGZvciBib3RoIHRoZSBT
b00gYW5kIEJhc2UgQm9hcmQKCk1hdGhldXMgQ2FzdGVsbG8gKDMpOgogIGR0LWJpbmRpbmdzOiBB
ZGQgdmVuZG9yIHByZWZpeCBmb3IgQ2FuaW5vcyBMb3Vjb3MKICBkdC1iaW5kaW5nczogYXJtOiBh
Y3Rpb25zOiBEb2N1bWVudCBDYW5pbm9zIExvdWNvcyBMYWJyYWRvcgogIEFSTTogZHRzOiBBZGQg
Q2FuaW5vcyBMb3Vjb3MgTGFicmFkb3IKCiAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vYWN0
aW9ucy55YW1sICAgICAgfCAgNSArKysKIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1w
cmVmaXhlcy55YW1sICB8ICAyICsrCiBhcmNoL2FybS9ib290L2R0cy9NYWtlZmlsZSAgICAgICAg
ICAgICAgICAgICAgfCAgMSArCiAuLi4vYXJtL2Jvb3QvZHRzL293bC1zNTAwLWxhYnJhZG9yLWJh
c2UtbS5kdHMgfCAzNCArKysrKysrKysrKysrKysrKysrCiBhcmNoL2FybS9ib290L2R0cy9vd2wt
czUwMC1sYWJyYWRvci12Mi5kdHNpICAgfCAyMiArKysrKysrKysrKysKIDUgZmlsZXMgY2hhbmdl
ZCwgNjQgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRz
L293bC1zNTAwLWxhYnJhZG9yLWJhc2UtbS5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bS9ib290L2R0cy9vd2wtczUwMC1sYWJyYWRvci12Mi5kdHNpCgotLQoyLjI2LjIKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
