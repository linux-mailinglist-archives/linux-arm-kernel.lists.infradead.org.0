Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 161F948175
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LyHWN9133+U55/S893kFze4KwKdRyjzt4f7a3UbxF48=; b=dN4N461WdnFFd7
	wrzS5POe/YkBM9c4d5/uHi/NTFiB972XcrMU5aED5gLVihXM77+2pHCOqeVTwO6KAdTQJsTvthzBw
	1zNGbbLaPxe8fy2MKTLoumHnEbJ+MuQ+laUpHZQUFfZKJTgk7NepMlypIOrnAvySb0hgGUBwz1EID
	JuHYSKkCJtlZ1zA6Ckv3hTEn1ktammGPROrqQY1SICbQ+DBKicrvyDfItvpewJ397klhLXq/xV4Q4
	fRxhS3GSYUarwhC2B/FO1kNzLP2EQNaXh3ECfrN2NnrZccAwFLc3I2KnJrmdwiawvWQRXT+UrNhha
	0Q88rYABBYfrBy9c8Ksw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqL0-0003RK-U1; Mon, 17 Jun 2019 12:02:14 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqJi-0002pJ-OC
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:00:56 +0000
Received: by mail-lj1-x243.google.com with SMTP id 131so9032385ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:00:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nleIE9ePi5skSHo052Xl0bardtZ3IpqSGXLP+XjhobU=;
 b=raAxo0etEdipbUmleEts6OLEsC8B1ii1er9sNc53iO+ucv+O5CUPdOq4zQP7ZRoiPQ
 S70dn0e+SLyL8AJw86Gt23gG+NnaO9yUebcrklSUqq2roiPX3JefNWuL13UXDON5t9Fj
 yf/0xULOgk5brkXPCp5al74EGEI3mO2hiQ8mLfwF3eOl6NUEeZqzMb7SXQ3nouaPNzwO
 RAIu7PygtuwmShhaSLY2RqsICL06qpkLvGKgGMRynXIBZIlua4hAsp6VGNfcAWSQz89J
 0flWSgUij5FkXsa7S8O9I/FBQPdg8i+L9tWck1Y1EJyYHL2iM608ggVjMDmbr3+/HxtE
 oLAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nleIE9ePi5skSHo052Xl0bardtZ3IpqSGXLP+XjhobU=;
 b=Y14sACzEOujgSD4d+riX4B/axTDj1XacVo0ituDuyOLRdvd1Ql0xrMCcttdFJaafwF
 xlhHCyqtDlWo3t97WEd2X6Hb6cHELZrQ6HzfxbzePsGEpl7IWn0EudUkhYUdZGM86ZRO
 bZ3dPL/PeHZKE54aFsKBx6p2cj4kqEhKTUiyCHh//mguFLuF/hlUEaDiR89r2WPz9d5U
 6OIHxW+dCcJBIshPsFoQYZdijBGg3PTm2LpD9V5hQTh7B95xx9X6quMiRTinDEySuPmO
 5Ttxeqp9WFwh2V+DWQ61uFg7uXdRqxi5b2UfeuuSsuPXH6guXlLMpTUMC0ET/MvN2CfO
 wscg==
X-Gm-Message-State: APjAAAXIOuovR5J2EJ/6EooNumfypHPy10M2Vw5WUX3YF1pu12GcpLM9
 mQROZijsf8zMFI9FLJ5SPFtEqA==
X-Google-Smtp-Source: APXvYqyvY+d9qaHyNXcrAGDLi4O4nxgI3uhriSPZBNVI+IjOaAqBEDljJgrhSL887w+/AyzyjVHasA==
X-Received: by 2002:a2e:5bdd:: with SMTP id m90mr49607117lje.46.1560772852116; 
 Mon, 17 Jun 2019 05:00:52 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id n1sm1718747lfl.77.2019.06.17.05.00.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 17 Jun 2019 05:00:51 -0700 (PDT)
Date: Mon, 17 Jun 2019 04:49:48 -0700
From: Olof Johansson <olof@lixom.net>
To: Li Yang <leoyang.li@nxp.com>
Subject: Re: [GIT PULL v2] updates to soc/fsl drivers for next(v5.3)
Message-ID: <20190617114948.7xxtpivve52c2jnb@localhost>
References: <20190605194511.12127-1-leoyang.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605194511.12127-1-leoyang.li@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_050054_897711_05DDE21B 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: arm@kernel.org, shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 02:45:11PM -0500, Li Yang wrote:
> Hi arm-soc maintainers,
> 
> This is a rebase of patches that missed 5.2 merge window together with
> some new patches for QE.  Please help to review and merge it.  We would
> like this to be merged earlier because there are other patches depending
> on patches in this pull request.  After this is merged in arm-soc, we can
> ask other sub-system maintainers to pull from this tag and apply additional
> patches.  Thanks.

Li,

You never followed up with a reply, or removed, the previous tag. So when we
process the pull requests that come in, we've already merged it.

So, I've merged the previous version. Can you send an incremental pull request
on top of that branch/tag instead of a rebase like this was, please?


Thanks!

-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
