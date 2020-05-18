Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B7B1D9256
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 10:46:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Resent-To:Resent-Message-ID:Resent-Date:
	Resent-From:Reply-To:Cc:Content-ID:Content-Description:Resent-Sender:
	Resent-Cc:List-Owner; bh=Y+54pSCuEv17PCFwgQiewW1GCNaDKyoq43A6uWwSD0M=; b=f4+A
	56zB7mu4XlATV8H/WWqc0jLKpFKsRcqbt/jmLnEnLW7g8Uib+6NzoF5R69t9Xnm2jvrBTTV55um7o
	tPqq0ICbKSEGH/s++qnJOizzBQRQVz7MDBfmo7Z3RBZ01DeqEDWpJF02WSrRy/1bkptKuyUQfS64N
	V93C/z63RqNYh6OJP9rrWFkIQlq+P/Vt0KV8+QLyXrSm6F7dxdhkqcFd9J8dZVP2twc/hcEj/vVlW
	mnhJ6bEELJMI9evjTweAnq/EJ2VoIXlqFcZX3Gbl5VBHcQ6RyXawMB7fHt7t/XER6Ru6hVabudDcC
	usaYnnZSR/ROqoIYMaGfo8GGInVqvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaxsy-00087h-Nb; Tue, 19 May 2020 08:46:04 +0000
Received: from the.earth.li ([2a00:1098:86:4d:c0ff:ee:15:900d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaxsW-0007xK-9H
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 08:45:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=earth.li;
 s=the; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Resent-To:Resent-Message-ID:
 Resent-Date:Resent-From:Sender:Reply-To:Cc:Content-ID:Content-Description:
 Resent-Sender:Resent-Cc:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OE58ZX5Oa1e7YVFVtcnMs3q7vetLAsEVZFBhervmLAg=; b=HZ7v0WMMqWQK+ZvUq+76mMr9DZ
 PVsFsgF4xe8cP6gFjQKWadxraZOCoaRWDYfGz9uS52oa1o+OmLT/3tQPfERa3RWJ74dcBTTcR6NFU
 DlpHX2R1v+q7tXq9GQqr9GRXmWpR3+dghKEf4ZlQulCXhvvHskIpq7l+WahxgESHCro9njk/DQeMk
 S7lzKsXoAKWDoilOCk93u4tQNN7EPAbejJKEjSc5wGD4RAvYnTGQ3iKNuxE8Mlchmh4LlcsTeu6ai
 oxFHksocIPeHjsUP4ClLhP1BDpeULxBdFGlXWSJiVDikJT/vzK4pxZagC+r5nq7HXg6u6rIIMPJkD
 jvVmSgfw==;
Received: from noodles by the.earth.li with local (Exim 4.92)
 (envelope-from <noodles@earth.li>) id 1jaxsU-0002pe-36
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 09:45:34 +0100
Resent-From: Jonathan McDowell <noodles@earth.li>
Resent-Date: Tue, 19 May 2020 09:45:34 +0100
Resent-Message-ID: <20200519084534.GS311@earth.li>
Resent-To: linux-arm-kernel@lists.infradead.org
Date: Mon, 18 May 2020 19:09:30 +0100
From: Jonathan McDowell <noodles@earth.li>
To: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add MikroTik
Message-ID: <aae96cddb2d1426482cae7f6fc4d1dc0aecfde5d.1589824955.git.noodles@earth.li>
References: <cover.1589824955.git.noodles@earth.li>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1589824955.git.noodles@earth.li>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-UID: 2045
X-Keywords: 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_014536_319425_856CA103 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TWlrcm9UaWsgKFNJQSBNaWtyb3TEq2tscykgaXMgYSBMYXR2aWFuIGNvbXBhbnkgd2hvIGRldmVs
b3Agcm91dGVycyBhbmQKd2lyZWxlc3MgSVNQIHN5c3RlbXMuCgpTaWduZWQtb2ZmLWJ5OiBKb25h
dGhhbiBNY0Rvd2VsbCA8bm9vZGxlc0BlYXJ0aC5saT4KLS0tCiBEb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgfCAyICsrCiAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sCmluZGV4IGQzODkxMzg2ZDY3MS4uZDMyNzdm
ZTY2NDBiIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVu
ZG9yLXByZWZpeGVzLnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3ZlbmRvci1wcmVmaXhlcy55YW1sCkBAIC02MzMsNiArNjMzLDggQEAgcGF0dGVyblByb3BlcnRp
ZXM6CiAgICAgZGVzY3JpcHRpb246IE1pY3Jvc29mdCBDb3Jwb3JhdGlvbgogICAiXm1pa3JvZSwu
KiI6CiAgICAgZGVzY3JpcHRpb246IE1pa3JvRWxla3Ryb25pa2EgZC5vLm8uCisgICJebWlrcm90
aWssLioiOgorICAgIGRlc2NyaXB0aW9uOiBNaWtyb1RpawogICAiXm1pbmlhbmQsLioiOgogICAg
IGRlc2NyaXB0aW9uOiBNaW5pYW5kIFRlY2gKICAgIl5taW5peCwuKiI6Ci0tIAoyLjIwLjEKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
