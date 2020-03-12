Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66245183D47
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 00:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:To:
	Subject:Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rOO18XCSsSH9UF7hYct3lGgMvKwjlLHj3CZIhmGpU9U=; b=gWN
	pFMQB5M7iwkV1Y8JjaGZnK8lihJfIZdvGEjeungqdckxWkD3jXMbd5zM+p6n1UikdGW923xflJqZX
	aUYNuDPmWRANtCS7jYJ+0xq+1Dtp+GtgxRgWwfD8+upVzKchGRhT6O0352bcEhPfFYA+9FGw9+3Nx
	8XwuA1KP/BzsZ7pWVROolw2XW0kAlVGKFSto1oYxIuUfeUyD+ivw9Khh9d7kIJFczoCC9cAS8oVho
	mc5e353+U4P2Q+BAeyYFTG/supTh3ZffQ7Tx7fhZv/qnZVvPKzllA2xUrWol0IgCiqV28Xp0phbsC
	RzujVOI8oZVl9aGlhwcGaN4JQAMr0DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCXDp-00054L-Jp; Thu, 12 Mar 2020 23:26:37 +0000
Received: from mailrelay.teuto.net ([212.8.197.106])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCXDg-00053k-Jb
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 23:26:30 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailrelay.teuto.net (Postfix) with ESMTP id D0FF6199E16
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 00:26:20 +0100 (CET)
X-Spam-Flag: NO
X-Spam-Score: 2.346
X-Spam-Level: **
X-Spam-Status: No, score=2.346 required=5 tests=[BAYES_20=-0.001,
 FREEMAIL_FORGED_REPLYTO=2.095, FREEMAIL_REPLYTO_END_DIGIT=0.25,
 LOTS_OF_MONEY=0.001, SPF_HELO_NONE=0.001, SPF_PASS=-0.001,
 URIBL_BLOCKED=0.001] autolearn=no autolearn_force=no
Received: from mailrelay.teuto.net ([212.8.197.106])
 by localhost (mailrelay.teuto.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id OvGe8sS9wkft for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 00:26:19 +0100 (CET)
Received: from smtp.teuto.net (smtp.teuto.net [212.8.197.13])
 by mailrelay.teuto.net (Postfix) with ESMTPS id 57FCF199647
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 00:26:14 +0100 (CET)
Received: from zimbra.teuto.net (zimbra.teuto.net [212.8.206.47])
 by smtp.teuto.net (Postfix) with ESMTPS id 268AC401BB
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 00:26:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.teuto.net (Postfix) with ESMTP id 206BF3E097E
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 00:26:14 +0100 (CET)
Received: from zimbra.teuto.net ([127.0.0.1])
 by localhost (zimbra.teuto.net [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id WAAJ1Fp7yMUM for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 00:26:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.teuto.net (Postfix) with ESMTP id C27673E0683
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 00:25:51 +0100 (CET)
X-Amavis-Modified: Mail body modified (using disclaimer) - zimbra.teuto.net
X-Virus-Scanned: amavisd-new at zimbra.teuto.net
Received: from zimbra.teuto.net ([127.0.0.1])
 by localhost (zimbra.teuto.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 6Y89ygMmQKts for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 00:25:51 +0100 (CET)
Received: from [192.168.254.12] (unknown [93.182.109.7])
 by zimbra.teuto.net (Postfix) with ESMTPSA id 3C68B3E03E2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 00:25:42 +0100 (CET)
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Hello linux-arm-kernel@lists.infradead.org
To: linux-arm-kernel@lists.infradead.org
From: Anna Ryan <valerie.lee@ssp-ce.de>
Date: Fri, 13 Mar 2020 00:25:41 +0100
Message-Id: <20200312232542.3C68B3E03E2@zimbra.teuto.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_162628_803081_E8CD8F7C 
X-CRM114-Status: UNSURE (  -3.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.8.197.106 listed in list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [annaryan2215[at]hotmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 LOTS_OF_MONEY          Huge... sums of money
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
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
Reply-To: annaryan2215@hotmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBpcyB0byBpbmZvcm0geW91IHRoYXQgeW91IGhhdmUgYmVlbiBzZWxlY3RlZCB0byByZWNl
aXZlIHRoZSBzdW0gb2Yg4oKsIDk1MCwwMDAuMDAgTmluZSBIdW5kcmVkIGFuZCBGaWZ0eSBUaG91
c2FuZCBFdXJvIGFzIGNoYXJpdHkgZG9uYXRpb25zL2FpZCBmcm9tIHRoZSBVTkRQLCBFQ09XQVMs
IEVVLGFuZCB0aGUgVU5PIGluIGFjY29yZGFuY2Ugd2l0aCB0aGUgZW5hYmxpbmcgYWN0IG9mIFBh
cmxpYW1lbnQgT24gYmVoYWxmIG9mIHRoZSBmb3VuZGF0aW9uLCB3ZSBzYXkgY29uZ3JhdHVsYXRp
b25zIHRvIHlvdS4KCllvdXJzIFNpbmNlcmVseSwKCkFubmEgUnlhbi4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
