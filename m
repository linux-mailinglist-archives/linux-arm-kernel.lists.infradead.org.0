Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C83FB1CB0AB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 15:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BGtZeSdhpzStP1SFn6I9x0kTzKQe068abqUdSEDSkoQ=; b=FnvE6wJQAn8O3M
	NepLV7yvfMh5nsfsZyX6CgdeY22LHaup0XYqciKtDzeyBysBaiqFpWEhwYpvebT45Gr4af2kYLnPi
	eL2b4SJTO+pydH0d+iW2wqTVy/HozCB+yBkmWqtUyMUPVCN8aORiP50UHnkD1ewFFRsCFrJlu24+D
	ETRgM8T7Kwfg6OrC9XgRq4t8Q9caI27j3C9j/aFLg9/AhXac9cYso8O1lEZaiT6pnn7PfRoPVwg7x
	rHECggNpTL8dm28WaXKllB+2ikD1VtvXxIDSLllI/fbfPY3BzDlcrAGSe2rf6mAIJRFRvf5SJOXre
	VSFkgsmVvSBreVxqmPIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX3HI-00028U-KB; Fri, 08 May 2020 13:43:00 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX3HA-00027M-29; Fri, 08 May 2020 13:42:53 +0000
Received: by mail-yb1-xb42.google.com with SMTP id d197so951660ybh.6;
 Fri, 08 May 2020 06:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pBzNAF/rm7qf9JD/mlsQ0iA9eh+VbbrEwR4tF97TGU0=;
 b=BdKPI5hcsGYeVJ2qAcgoxudFb/SH8PYr5sEVthDkxf5m2TDBAz2c0Q2KnFBcs9vAye
 KgE0EKzHjCXC6wRWMk6S/U/UHJXgz7Za12YEeGR7FXT5T6kJYFbWLnK80VeUg+6c/7yb
 VK4Wd6O2kVyvPLz1Z11l2e7CtJWaVXrKJ8Icu4pbptqGD71IqTu/m/nS/5l/pGmCz87B
 L/6EFRMpVUfAkUMPOM5ZRt1AZjfSopnzh6aXTDK23EhWaM2e6RRsISDF1GoHOpvx4iON
 UbaiWxelgTSYwLNqty6k+rNaj7eA1fztdFYvfOORBjgF4dzGzs/MtVcbkOPy99H+19jO
 b9Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pBzNAF/rm7qf9JD/mlsQ0iA9eh+VbbrEwR4tF97TGU0=;
 b=FHcjJch64Ms+Ij9rh/mN70m8ANmU6BW+/K8dLOE6wiDPeeR0nG9U/hNBYNWH0peh73
 YHdpZqk+nrygV2l6jMH0VnldmpVdmWH17OvIH2M9McT6hsON2Vkq8IUZqJiGF3J0cq0D
 JWmQwuDBdlhVNNXQ3yKNoTZt3KJRdvTjh6lkM8iAM/dOOL/bxEMb+fOWuOvBYXZSdjGh
 8ss4GNsHBEOrNGMkrF4qE806cYSDVNRFHgzoiHETT5QZWBPtB6rgoqEHBO2wWg/DHgF5
 t2bgwZnCGUZQeitRSNRLFfyQ1+CXHmFy9HFSxgk/a87+3ONGd8+UoyYI2j4eDgb3kT3p
 PZ7g==
X-Gm-Message-State: AGi0PubHMEgCNlXhtkJMFq7pT75zY32ymVRsIEDN/gLeFZR+uRWs5BUx
 +UIXv3rEFh/iIB0DlPO7Hb05uJjHKAg7q8LGVkY=
X-Google-Smtp-Source: APiQypIX5kfqFGCBsLkvNmM3MXcMOc1ZzFCbC1vb3bZA4gU/cyEFJAiTo63nwaUf5Ac11beleDD7UJGrQ7Oe237J/X8=
X-Received: by 2002:a25:487:: with SMTP id 129mr4557690ybe.1.1588945370813;
 Fri, 08 May 2020 06:42:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200508083729.5560-1-chris.ruehl@gtsys.com.hk>
 <20200508083729.5560-2-chris.ruehl@gtsys.com.hk>
 <CANBLGcwA+=OB-_nOYUijWrDBSkLYhR7_PNG1ewO7LZ-zRVGoxg@mail.gmail.com>
In-Reply-To: <CANBLGcwA+=OB-_nOYUijWrDBSkLYhR7_PNG1ewO7LZ-zRVGoxg@mail.gmail.com>
From: Emil Renner Berthing <emil.renner.berthing@gmail.com>
Date: Fri, 8 May 2020 15:42:39 +0200
Message-ID: <CANBLGcwAhOHVBUrwLat_60D=wwKkXP2==fazQEeJNuB-CizZLQ@mail.gmail.com>
Subject: Re: [PATCH v0 1/1] spi: spi-rockchip: add support for spi slave_mode
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_064252_104892_C6746A18 
X-CRM114-Status: UNSURE (   7.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.renner.berthing[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, Jack Lo <jack.lo@gtsys.com.hk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chris,

On Fri, 8 May 2020 at 15:13, Emil Renner Berthing
<emil.renner.berthing@gmail.com> wrote:
> If you do something like this you won't need the temporary num_cs variable:
>
> if (of_property_read_u32(np, "num-cs", &master->num_chipselect))
>     master->num_chipselect = 1;

Sorry, that should be of_property_read_u16, since num_chipselect is a u16.

/Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
