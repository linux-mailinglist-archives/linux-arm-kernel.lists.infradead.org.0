Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C0F1E8642
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 20:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPyNUVZScLk3a1SVTten9mtpUKDAAvLqGZcXeTGSNf8=; b=lvpaap9z3ql9Pr
	mKK9CqNxLCv0U0E4jsFHPTyX4F7g6FIq7QJwggv31ua6R7o8R591opg00+LBYNxR1HMAVjrr3znmo
	T7udkDDo8xAb99eBYIghLz1Jd/+1R6dGZVL++UJRFXSGvIoMo8tVlJLfhtQ65uf0zm9QoUpLNaYp7
	qHlPF+izrlmQajbtZ2g0AwmIf2bJogLlLWKiR8DRLd4eaOJwsFSgBDEq9T+gBN/vplU/Bykwk3q3W
	loepSBDM39ia1vfKgMcJTJxro461U+IN7mZBjc+YO2Guzi/+oCH31n4G1adbL4jtIPng/9aWs2x9G
	n+l3Uxv/cbh0YxReekow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jejQH-0001nr-F1; Fri, 29 May 2020 18:08:01 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jejQ9-0001nL-60
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 18:07:54 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 2B60F1C0385; Fri, 29 May 2020 20:07:45 +0200 (CEST)
Date: Fri, 29 May 2020 20:07:43 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: Re: [PATCH 1/2] arm64: dts: Add a device tree for the Librem5 phone
Message-ID: <20200529180743.GA1081@bug>
References: <20200514155737.12160-1-martin.kepplinger@puri.sm>
 <20200529162850.GC3709@amd>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529162850.GC3709@amd>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_110753_370538_13102988 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: robh@kernel.org, kernel@puri.sm, Anson.Huang@nxp.com,
 devicetree@vger.kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 angus@akkea.ca, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, mchehab@kernel.org, festevam@gmail.com, agx@sigxcpu.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Plus, do we need calibration matrix for magnetometer?

Best regards,
								Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
