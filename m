Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4618D1D70C4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 08:18:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/OOxDTf7F3hhKT/u5l24kVkzM4lltrmAkuPXIzrpL0g=; b=QhlSNCkCha9yYX
	E9P/Emh4bWTM3oNp4v7YQ6hygWy5z8dIt8U6PY14VZVVJAAvlWLiINcJpZjw3M4fezrDqj0Xsi0Zh
	YOnS4ARSsZKJfhLsp5Qbx2JgM5g7sqgPXSnV6PfsFKfADcjQ29zLEB/gxhenQdx/mIHTMzXAnURhF
	nBtYYWe4rQfFjK51u/i54dCIOudp5JjX2uwLFtbAzBI62SvrHSPcbT0GDKnxAR3v9x7JguPjf6HBq
	/lAMEQpnaXk2smnDA1wcRKYubfvCrIEBmhrKuoo+aS7x+FkalyTNtcFDvzQoRgdpHV3kSTCXmq+GP
	OR6m3cO4sUBu6TtzvjUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaZ6P-0004DF-In; Mon, 18 May 2020 06:18:17 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaZ6E-0004BL-BO
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 06:18:09 +0000
Received: by mail-pj1-x1041.google.com with SMTP id q9so4533090pjm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 May 2020 23:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=M5n9pR8YrcNGB5Twdpxaglw1ExqBVeZzm3ypCn0PPMc=;
 b=DHnstMwQFGeIHpwRXsQCLJAkSNRVmDDGdUFKxiLJy74upnbawfn7dQnkZM0IiIiaZO
 i2YohVkDOY5B4KNM9xk5sHADOEWJ3IJz0/fRzPCg+kkRimTJU7qOC0obJwLQbkIPxYJ6
 omDZifamvwez3z2PdiCJE7dBhU2ziZ69HD+gPhojclA/renBHrtSD9rOqBxvOsV78ry3
 nr/ITYcrlOxaDiCSIsaw7v/f1r/aAs1EsEpgbn2UGyLl6CxmGFsdisCXgYhWwOHY3Z9M
 +rkfi0jokBWL+sbXsv79kBIsE5Ee5cD+Bf4CGbmDTYJUe2EY6Nm+vjSty9VjUny9zwc5
 h5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=M5n9pR8YrcNGB5Twdpxaglw1ExqBVeZzm3ypCn0PPMc=;
 b=Si7ABblWA2vSbykUF2tW9Lb4fo3wq0vmvuC0y6Q70WfUYWFgvdic1jKWO60hrKZSzv
 ZbA/zmMOdt5TfRMaKPv9dmMJmYUbU4VZeEKc2iBVAwRrpajsuuYZ0XMdqjgkRuYW5/0P
 AGbEvDWjV2RIO1O0g9GzJtVZB8i3TzX6RfV0R21XexwAdFvcFzCE5dRsvZGuy4QBRKse
 amWKV0xLG6oWnCN1jPNWUk5hLoxq369bWyDg/lyZvyCdHj2Vxj7qTFTw5V/APIkDhi5R
 +pQlMJzh0X886O0b2fLfm7ifY7YBx76vBX1PyICixSZTQZgn5PpZNniGvZzx12p2rXZJ
 k4dQ==
X-Gm-Message-State: AOAM531BC6C/hTebvwRkm5wtfcyR546bxN4k2BI3eDp6OOS+ho6ljVSq
 k1cWEx4QEw9+DquEBH5rL9gG
X-Google-Smtp-Source: ABdhPJyxTNnwHhkx79KytdDT7I/oyy+aWpUyx9e1VX+AOmVzNnaJnertusFfu8KQ0oRzutonEF1f/Q==
X-Received: by 2002:a17:90a:dd44:: with SMTP id
 u4mr16383713pjv.132.1589782684078; 
 Sun, 17 May 2020 23:18:04 -0700 (PDT)
Received: from mani ([103.59.133.81])
 by smtp.gmail.com with ESMTPSA id w7sm7468032pfw.82.2020.05.17.23.18.00
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 17 May 2020 23:18:03 -0700 (PDT)
Date: Mon, 18 May 2020 11:47:55 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Amit Tomer <amittomer25@gmail.com>
Subject: Re: [PATCH v1 8/9] arm64: dts: actions: Add MMC controller support
 for S700
Message-ID: <20200518061755.GA25113@mani>
References: <1589472657-3930-1-git-send-email-amittomer25@gmail.com>
 <1589472657-3930-9-git-send-email-amittomer25@gmail.com>
 <b2ad8a81-619f-5f35-9596-c2061ae15e4c@arm.com>
 <CABHD4K9yjUGuo0w-RfhdZQJm3Wtj6bU2H4DXcp4Jjp=e0fFeyA@mail.gmail.com>
 <2cd3cdaf-826e-9d12-9fd4-9f7e2a517ecd@arm.com>
 <CABHD4K-OaQ4Vf_+dg9FMR97ocLeUkDswyEnChPV=H=VcbyUhkg@mail.gmail.com>
 <abbef32c-84d2-7dac-c667-49610d014710@arm.com>
 <CABHD4K-MHs4jhL_9otJJ_xjC1uv1N20mnHqT39b2kob7WjZcVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABHD4K-MHs4jhL_9otJJ_xjC1uv1N20mnHqT39b2kob7WjZcVQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_231806_394066_A13F61B3 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 =?iso-8859-1?Q?Andr=E9?= Przywara <andre.przywara@arm.com>,
 linux-actions@lists.infradead.org, cristian.ciocaltea@gmail.com,
 Rob Herring <robh+dt@kernel.org>,
 Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 0518, Amit Tomer wrote:
> Hi,
> 
> > I recommend reading the DT spec, chapter 2.3.1 "compatible":
> > https://github.com/devicetree-org/devicetree-specification/releases/download/v0.3/devicetree-specification-v0.3.pdf
> 
> My point is more about, DT validation is not happy about this situation.
> For instance when I run dt-validate, do see following:
> 
> /home/amit/work/kernel_work/linux/arch/arm64/boot/dts/actions/s700-cubieboard7.dt.yaml:
> mmc@e0210000: compatible: Additional items are not allowed
> ('actions,s700-mmc' was unexpected)
> 
> and I am not sure if this is because DT and driver has different
> number of compatible strings.
> 

Yeah, the DT YAML validation tool doesn't allow this. And there were patches
removing the additional compatible from DTS.

I don't know if the DT fallback is discouraged or not.

Anyway, is enough investigation done to justify that we need SoC specific tweaks
in the driver? I think I did look into the downstream code for s700/s500 while
upstreaming this driver and convinced myself that the same driver could be
reused without modifications.

Thanks,
Mani

> Thanks
> Amit

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
