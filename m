Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B281C196437
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 08:33:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ERvuYIvqjifodh1TbIig+ZrasChl0jblc4FOXOtVQzE=; b=AYzaEE6VinNPxA
	s5VvWIoeYkxYL7I6Hv4zkGxpDnGsRO/PgOY3GTXBo0oSkn7jXCpeKs2jxKkjgfu23+LetwtbLvkI1
	KFvDkFXkQd8vikb9otb1ofEHoKG6JR/B0uzZ4xXpD67QwuyXW0HS48ZiwBAHqe3kSBvtlec4EdT8Y
	1CSQ7BPUKKmjwsNIfnTZcqIIf/pmmdR8GSXwd9bAE1sa6heq+EZlBfmL4AzlJWpyn+vqaCYdpkQAz
	B9Jk5fRJezWL0ib4Le4VN+tPkN3mcwVNHj6hUyN6KjOnQFfiZBUm5RraHPFPmlwZXEWf74eXsGNrr
	K2EFqAfNreclE3LO+rlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jI5xr-0003CB-O5; Sat, 28 Mar 2020 07:33:07 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jI5xj-0003BB-10
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 07:33:00 +0000
Received: by mail-pj1-x1044.google.com with SMTP id o12so4779348pjs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 00:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+lojOXOS3R1T9zdX8YSaUVNPC+Uk4217Q9UeUwGqUmA=;
 b=jl9qdfm3jYBUJpt5JTOg0fpX+frk2U8CDB7NHla700eqbFzeaU5ddRrnkF9ulMws0I
 c9g6XZd+U1YMZF9/3LdLKd5v8wOHCvTpOK+41v0dC3rQjbl2zkCOwiKzOqyresW/3Mhq
 BcOd0bkAnUi+Zs7kVOtOgih+P95QQehDeut+bVNmK8w/pAqzhJa2/sY/cLipp5Rtomn+
 y0jJ0Kfcg23Own5fnZnDcgXrP0oJy8MDqN1sdD4UE300VgF+beh9dCTKovy8+8QPgJF7
 tM2KC+Uqrh6IJRCMsJf7pzvSFnZ37F703JjyJuB4ywUQrA0N8cjQpQZ/4AufrBOA8und
 kRiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+lojOXOS3R1T9zdX8YSaUVNPC+Uk4217Q9UeUwGqUmA=;
 b=inRp4Exl3KPqNUn75npIspIIN5C0Z1J0GdpbsQc+ustH9xLqsp7DVxUnGaf0fIJEGR
 AgWrPRg6/vJQ8dqBXiOCNlVijKI6mCp3pfNL9pCM0u75BfmcQUUQoVzoFGXtCUhSP15K
 ywJTprZvzEEQRWSuC4RRpy3d2uVTox3EaZbkKg3huJp8pcSuWE7U1HOeugQzyjSNdoFt
 hRrFQA7auTxRSu2w2Ro8FLwozQ/XIzMXJs1Ua2sDLUKuVfjc+mOP4PWRzDhMkymztNJZ
 LTmKG5AsiIpeZbgpboexDMDI9bvka0gSVpSrQ8+LymvoaT/6kFU/EdESGGxahBydAWda
 DO3Q==
X-Gm-Message-State: ANhLgQ0pj7CeABIepB6/i7RhL2ND1p7Kafj0E766DIla3RBQDr7yNBQ0
 kcEJznEzCDdKIcXl//E9YMxwJ6/givk=
X-Google-Smtp-Source: ADFU+vvZAKeuGMHdxTRxMDuAgPAhSOtHeclFmaO/lZBPjDGm3MtGtV8wn85/n9JVZFDDDkLW/Z1SiA==
X-Received: by 2002:a17:90b:4906:: with SMTP id
 kr6mr3699363pjb.13.1585380776339; 
 Sat, 28 Mar 2020 00:32:56 -0700 (PDT)
Received: from localhost ([49.205.220.152])
 by smtp.gmail.com with ESMTPSA id 132sm5624219pfc.183.2020.03.28.00.32.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Mar 2020 00:32:55 -0700 (PDT)
Date: Sat, 28 Mar 2020 13:02:53 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Brian Cain <bcain@codeaurora.org>
Subject: Re: [PATCH 0/6] Kill setup_irq()
Message-ID: <20200328073253.GA5250@afzalpc>
References: <20200321174303.GA7930@afzalpc>
 <cover.1585320721.git.afzal.mohd.ma@gmail.com>
 <059b01d604ab$637355b0$2a5a0110$@codeaurora.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <059b01d604ab$637355b0$2a5a0110$@codeaurora.org>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_003259_095771_35163FFC 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-c6x-dev@linux-c6x.org,
 linux-parisc@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-hexagon@vger.kernel.org, x86@kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
 linux-alpha@vger.kernel.org, 'Thomas Gleixner' <tglx@linutronix.de>,
 linux-omap@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Brian,

On Fri, Mar 27, 2020 at 09:48:38PM -0500, Brian Cain wrote:

> > Note 2: hexagon final image creation fails even w/o my patch

> 	What's the nature of the failure in "Note 2"?

drivers/base/firmware_loader/main.o: In function `fw_is_builtin_firmware':
/devel/src/kernel6/drivers/base/firmware_loader/main.c:132:(.text+0xc8): relocation truncated to fit: R_HEX_16_X against symbol `__start_builtin_fw' defined in .modinfo section in .tmp_vmlinux1
Makefile:1077: recipe for target 'vmlinux' failed
make: *** [vmlinux] Error 1

[ i had deleted the toolchain earlier, since you asked, download again &
checked ]

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
