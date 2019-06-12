Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523EC4230F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7YNkncxqxs48KgNP1h09mJdycDZCgk4Y+0nPD5J0wUw=; b=rjL2V2wQOZHItO
	kniQmCTOwc5k5Uri648C6cMjuXot/MYaoeKyBMtcSbc78Ckzv9OZBszSIRXgiCRAEvXHMMFHi1cfG
	T/wgNkNZTZy9NfSKtk0QwewlsgoOOQq0xtN0LETmU+Uv8eK4RkDhLWwqXTGRSth7v2dO7H+uAvCZj
	DVmPlv9mKGFsCZUwzGiP3ner5HQgmbY6Wksoxr5xeiKgsG8S5uAXEFyyXQzZ3er+2H8kxtFuAZiXk
	dm/u6xvbOdop/JsEF+lWgLIMYCfA0C/tKFW4nieLpjs7CL/GPfLlL880our9T3TA7gvheiKA4kpkL
	ZRsI5Yxt87rvJOQP5StA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0sg-0003S2-R6; Wed, 12 Jun 2019 10:53:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0sY-0003Qs-Rg
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:53:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6897228;
 Wed, 12 Jun 2019 03:53:17 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 757533F246;
 Wed, 12 Jun 2019 03:54:59 -0700 (PDT)
Date: Wed, 12 Jun 2019 11:53:10 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: ARM SoC Team <arm@kernel.org>, ALKML <linux-arm-kernel@lists.infradead.org>
Subject: Re: [GIT PULL] firmware: arm_scmi: more fixes for v5.2
Message-ID: <20190612105310.GA12068@e107155-lin>
References: <20190524161606.GD4408@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524161606.GD4408@e107155-lin>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_035318_946934_B3B44E2F 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 05:16:06PM +0100, Sudeep Holla wrote:
> Hi ARM-SoC team,
>
> Please pull !
>

Please ignore this as it's not so important to push after -rc4.
I will add these to other updates I have for v5.3 and send the
new pull request.

I have already removed the tag just to be sure. Thanks.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
