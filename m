Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4CB81830EC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 14:12:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ecg0071Q98Q90Qg1yLOCZ+9ChdmE7rSIZ6F+t7rVkjY=; b=ipJnYdkwDKqFCj
	2z8O+gqqzuEl22cm55BxdmYPAbWnygIrfH6p6D68/jguPLltNz2f3/gRpnSTOeGTr5H/tKXk51XIy
	PE6L+dKmTddsKoidHoRyxe9koSiBrthO9bg1VbYwMoZ7vSjCd2Vs/CkUW+QQZxSMpi6eywaSzG71l
	OIZbHGlpGV+klAGOideUHcVuR9c9w59NXtPmORN2OmysSjSpqE/TEEbvaKYAISIzjfBRVwXgQWS3q
	g3rhCD5VLwk2y7TwlSQ5vdzfusVWJgd7YNcT525Yzhe+li+sOGaMHz56+o83W8FyRw3DUl0QztyO9
	77Bz5PNhSizQibreeIMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNdm-0000q5-Tw; Thu, 12 Mar 2020 13:12:46 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNda-0000pa-Ns
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 13:12:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id t3so3075957pgn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 06:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=q6Q6VQm5erA6yCp5PM0NMfLn+9SyOR16cH0hI7kuurI=;
 b=A9iOaC9a829BBVLJRhs5ZhCKqDx4h7XhwzWfGolJmIhPVZUbocE8lGSqKlG54mYrQE
 Mf+QMbXMWrYkKXgh6r+JiZIgxCqtRt6uzNzULANRNFlkTdDP1UiL380jfjjEkiKRW+cz
 PpjQxVtn+E/uZdNUYgFwDRPtGPUAoITwBZ5oKT3z9KdISx7XWC5vEPk5Zo5M/MGSXYFC
 d5lhYhKBAiOqF6dB2oX0mzSfoDbjyywi4ouCKE8P0969hP2W5xKwzuNC0+tuWS1eQtrY
 aGn+YcUVz+gNv392enyhcRXAoSRNI9gsNx/kWQqrsVMtFbaySCgVt2I76R2Daco3JbC0
 Mwkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=q6Q6VQm5erA6yCp5PM0NMfLn+9SyOR16cH0hI7kuurI=;
 b=FX3/xhGfYG7S/QcHQCICLQDKnyAklr7YSL9icMLcAExlLpXM6yO7U1BBP9l71ZEWvX
 Hg6/HnWSFg9QDLZiSX6OABQPs14EzLAi2/yN92o4kzYFQgMAWjCmkwmJXmZBTSKuEe+x
 KZD6R989kwQirNiDOhAjWilwtKeo71c7h4ZweJDqGXo8w+bXNuW8Uvv/SV8w5PTeLUNH
 31O9N0I/RduBOSyz7wLWUJEVOdF5p9rPw98jva/wxP9Bw4VO6l6hHdoyRSnu1ANybctb
 MCmFuah04bzBT923guNune5WlnjKRYwb0ddmPp3vWLHCoFpo5e63w0eKFPiKq9c4JhUh
 q1zw==
X-Gm-Message-State: ANhLgQ03MxCQ6doWJupyMXuITvW8DPB3b3tdQxpr4u8t9EykJZ980LZY
 tj8nUfk7NZLK+GwBEhuyCmw=
X-Google-Smtp-Source: ADFU+vvuOO0DOpX+8j5S4B2tzl8ZCqQc4niQjBgKy3UKNtsJMqVtvxsPp1+LXgiCC7ggpJknWVjAdw==
X-Received: by 2002:a63:a746:: with SMTP id w6mr7157862pgo.76.1584018753787;
 Thu, 12 Mar 2020 06:12:33 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id 135sm4447265pfu.207.2020.03.12.06.12.32
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 12 Mar 2020 06:12:33 -0700 (PDT)
Date: Thu, 12 Mar 2020 18:42:30 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH v3] ARM: footbridge: replace setup_irq() by request_irq()
Message-ID: <20200312131230.GA7618@afzalpc>
References: <20200301122131.3902-1-afzal.mohd.ma@gmail.com>
 <20200312123432.GZ25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312123432.GZ25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_061235_217130_6EE83952 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Viresh Kumar <viresh.kumar@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Thu, Mar 12, 2020 at 12:34:32PM +0000, Russell King - ARM Linux admin wrote:

> This patch causes a build warning:

> Hence, I'm dropping this patch.
> 
> I think you need to look more carefully at the code you are modifying,
> and maybe even build test it.  Cross compilers are available from
> kernel.org.

Sorry for the sloppy approach.

i build & boot tested only using ARM multi_v7_defconfig which was
building only few of my changes, i had the cross compiler. i was trying
to rely on kbuild test robot for the other configs earlier, from the
begining instead i should have made sure that each modified code builds
w/o warning.

i am fixing it.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
