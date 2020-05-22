Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5A21DE676
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 14:13:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:
	Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ekTOnuZid1QvRWq3a5tkg1aU/n2JYsm/90rdMY6F8OU=; b=ePNHHPxB6e/2HH
	zelsG1fa83XOLs694OnC25Bm+sZFAWnD2Jax5pV3WffCSEFbCEtuCdrn475YsHdgXNaVsGA3x23N8
	qBHnetCpkF9axeLu9IHG+TnHgWl9hBqvhDCQj6Y1L5om0J9YshYDHd5F4NI+IkfGNKiRZ+wJEEqE+
	HlMSpyMfnzsfZ3fH3my2x4la055b5bru4MNM7rFQ2kck8cbjkWzWhBEIMtnOrcfGoXuhuY+tJbyCE
	xxKMaLKcAbQMKi5t7T+29P3Q8a2Pqe4iynuGWJbt+zdreJ9O/Mi2pssd80rV2iHbW7b0AsYZWKLzG
	TkAOOGFGqrUtbGSGYkQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6YA-00027n-4Z; Fri, 22 May 2020 12:13:18 +0000
Received: from gproxy6-pub.mail.unifiedlayer.com ([67.222.39.168])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6Xw-00027I-NS
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 12:13:08 +0000
Received: from cmgw11.unifiedlayer.com (unknown [10.9.0.11])
 by gproxy6.mail.unifiedlayer.com (Postfix) with ESMTP id 625D01E16C1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 May 2020 06:12:21 -0600 (MDT)
Received: from bh-in-28.webhostbox.net ([45.113.122.70]) by cmsmtp with ESMTP
 id c6XCjcnUfVKjoc6XEj6bC3; Fri, 22 May 2020 06:12:21 -0600
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.3 cv=G4oy7es5 c=1 sm=1 tr=0
 a=9Cx8FPYtpXTFjPoUWrpI9A==:117 a=9Cx8FPYtpXTFjPoUWrpI9A==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=HpEJnUlJZJkA:10:nop_no_mid_header
 a=_4xEVzfzgbUA:10:replyto_email_address_1 a=8nJEP1OIZ-IA:10:nop_charset_1
 a=x7bEGLp0ZPQA:10:nop_freemail a=sTwFKg_x9MkA:10:nop_rcvd_month_year
 a=cMIsF9jHZSgA:10:endurance_base64_authed_username_1 a=K57tCgj2AAAA:8
 a=ERelEVEFNdIaPiQXLokA:9 a=DTrWy-KMkTv1M_DC:21 a=6XKv20qmviL99po8:21
 a=wPNLvfGTeEIA:10:nop_charset_2 a=UYHNfbjoBqsA:10:uccc_2email_address
 a=q5Vjzk8818JP_bk5kF59:22 a=pHzHmUro8NiASowvMSCR:22 a=xoEH_sTeL_Rfw54TyV31:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aimspas.com
 ; s=default;
 h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ScB+1sI5wKcrRRXa752b0uerpLquSIiqU9I4OLmQ8ic=; b=blGZbZ89tmzH0BiVs2nncxmr8u
 wgZY8OSs6dr06Fpm6RNWyI+rXMIV1TGm4A/wCcdtE1rvUGu5uZ59rbnKUhI8pfpCoBH8TeAZ4tuJS
 5thaGeE0oKa1AaSSYdkJE9klt3j1jYlgH+4RqeVAhHzE/fPa8czoAy8JPYtHMqYMucq6ioE9rDMa9
 0JlPDiHCRcBo8rv+M5q9hvD3WE98mLN7CmQRlDvcktKH/x/GthlIheHJO+tyDRK9/krT1t+1Gdmnn
 DyAmwodLsU1oNG2bIQlSiwOArsa4jbFjeeWtS0frCwcZywrDma3UV23uSMBzN7weblNSRbYPXeMJ6
 gUYrbjuA==;
Received: from [205.234.159.68] (port=62174)
 by bh-in-28.webhostbox.net with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.92) (envelope-from <academy@aimspas.com>) id 1jc5aK-00018K-Uh
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 11:11:29 +0000
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Reminder - [Fri, May 22, 2020 at 10:00 AM]
To: linux-arm-kernel@lists.infradead.org
From: "Tata Power - DDL"<academy@aimspas.com>
Date: Fri, 22 May 2020 04:11:29 -0700
X-Priority: 1 (High)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - bh-in-28.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - aimspas.com
X-BWhitelist: no
X-Source-IP: 205.234.159.68
X-Source-L: No
X-Exim-ID: 1jc5aK-00018K-Uh
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([205.234.159.68]) [205.234.159.68]:62174
X-Source-Auth: academy@aimspas.com
X-Email-Count: 171
X-Source-Cap: YWltc3BhcztkZXppbmNyNTtiaC1pbi0yOC53ZWJob3N0Ym94Lm5ldA==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_051305_144417_E21D1F14 
X-CRM114-Status: UNSURE (  -1.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.3 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.222.39.168 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.222.39.168 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [dnyy6800[at]rediffmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 MISSING_MID            Missing Message-Id: header
 0.0 FROM_MISSP_XPRIO       Misspaced FROM + X-Priority
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 FROM_MISSPACED         From: missing whitespace
 1.6 TO_NO_BRKTS_FROM_MSSP  Multiple header formatting problems
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
Reply-To: dnyy6800@rediffmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Message-ID: <E1jc6YA-00027n-4Z@bombadil.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear ,

The UN and the  (IMF) has chosen to support 150 Private individuals and small scale business owners from
Pakistan,India,United Arab Emirates, Bahrain, Qatar and Africa.

We have arranged $500K USD  which will be paid to your bank account over there in your country.

In this regards, you are to furnish the requested information to the Directorate of International Payment and transfer.

Contact E-mail:    dnyy6800@rediffmail.com

Best Regards
Director of International Payment

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
