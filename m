Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9D74BDB6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 18:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3mBqwRs5jZhxOI6SeZBIHDZcsrd/8OTfU68Dm6SmVg=; b=mqhlW+zoR+uT0t
	dePyO7AeDXrE5v73R6z94L9kjNEV8Htu4wX4VAwK0767fjHGngU4GAS9RK7qW81fUcQ2jiyT0lqlb
	ZLI7MdatbqpjV0Ey5TEWYDQhsbtMEExmVOuhrDnXgRV7XFnqTvUHojfjUCWY2Kgc5NKacm1pNCmyY
	QXPDXGz8gfR2zQ3FXG7Ra1LtKQCpLlFS9E7qGxqZcMNh40aAL/k9LzPxxDM2ejFgEsrNVg7UhMrF4
	vHUct2Z+Sz/2gO2eHv67B3whyDM60saPuomsxxrxh4PgrBGMNv8vTVvV29OWqB3rUobibdJ+DoCCj
	jgrVTXmXWdZyjLsdZ4DQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdd93-0003L1-0f; Wed, 19 Jun 2019 16:09:09 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdd8r-0003KQ-RS
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 16:08:59 +0000
Received: by mail-lf1-x12c.google.com with SMTP id q26so57569lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 09:08:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Kt1F+WdS1T/qQLktXMS+CF0PUJliuuDz482m2jmkTQQ=;
 b=t2uhJgDviFzz7ksJ/jkIqoEu5/wRi0k2PYxDyavNfqWDIQSeiHOjo2Rk+dOrUXPsEO
 3RDHynYPWl4RXCnygKtL73pfACZL8F1JCLa7JirYR35I49SjMUE70DzG9AlSTL6dVXY3
 x+e3BC/L7f/FFSlVE43i5Bo2JkN1XwdcjmYv2oakd4XDpM+aXWiKfECaT5TLXYmVDHuF
 L3WPX9R622ldbQWQ14tdrGbjUAWSJgwl12rMaV/OPBAbFNweIf/FOL63ONs3kbf601tk
 6lZ5sc5GTgU9dAobygsu/l/O6dnwK5K54v6VodVPcBidzodATgZ7dPmnNWxkbwfObVrR
 rNFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Kt1F+WdS1T/qQLktXMS+CF0PUJliuuDz482m2jmkTQQ=;
 b=E+yr4r1euEsQW+Y2fw1CkOJiQz04UMnKbSZ33DmZIX8HOy+l/WWO9WIZWMy3lOMnBZ
 qC1erfGsYTkFThn8fzGWYpr7i8sn/XLayTONiHRRTA4nzdnIP7DfeNlc70r1hKf0W3kc
 5W1V/2QHEFu8SFnSIa5rTnltilrNkJ4v4j+cgtJ8guKBID6JlFyqnK7jIXDSTkqqGaPB
 9+j4z1/OQFS+1GIvs8vdwas5TRMkSODWvCbIhmP5Hmgcq6GKpDG5bDeWldbC+1ezyUrg
 S1Uv8b2FF5ZeGMhwszeFTUQ9Kg4xoNbkbKaFEHVCI/iq+Dt6iFo1+UaIgyedDsiVY3vr
 l5uw==
X-Gm-Message-State: APjAAAX6PRPlbG8a3YIwq5NhEU3x3UJatC48/nbrCe2G8RyCZyXkTiXU
 bN9+fmwjr7BVv263yy0sxGH25K7YBNZ1fQ==
X-Google-Smtp-Source: APXvYqynHgfDV6hdfs2k+4rN/h/uTeJT2KQwjn/wk/OtNq3i/yij/mr1HK5DwPBtUgfhfK+G8l3k8g==
X-Received: by 2002:ac2:5b0c:: with SMTP id v12mr50231724lfn.184.1560960535367; 
 Wed, 19 Jun 2019 09:08:55 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id x19sm3175007ljb.6.2019.06.19.09.08.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 19 Jun 2019 09:08:53 -0700 (PDT)
Date: Wed, 19 Jun 2019 09:01:09 -0700
From: Olof Johansson <olof@lixom.net>
To: Dinh Nguyen <dinguyen@kernel.org>
Subject: Re: [GIT PULL] SoCFPGA DTS updates for v5.3
Message-ID: <20190619160109.adimn6f4tfjrkikl@localhost>
References: <20190610153445.17215-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190610153445.17215-1-dinguyen@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_090857_917256_CA541308 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 10:34:45AM -0500, Dinh Nguyen wrote:
> Hi Arnd, Kevin, and Olof:
> 
> Please pull in these SoCFPGA DTS updates for v5.3.
> 
> Thanks,
> Dinh
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git tags/socfpga_dts_updates_for_v5.3
> 
> for you to fetch changes up to c946feaabbdd05b949756cd209ac3937f98aa148:
> 
>   ARM: dts: arria10: Add EMAC OCP reset property (2019-06-10 09:49:37 -0500)
> 
> ----------------------------------------------------------------
> SoCFPGA DTS updates for v5.3
> - Use the new "altr,socfpga-stmmac-a10-s10" for the EMAC controllers on
>   Arria10/Stratix10
> - Add the ltc2497 i2c entry on the Arria10 devkit
> - Add the EMAC OCP reset property on the Arria10
> 
> ----------------------------------------------------------------
> Alan Tull (1):
>       ARM: dts: socfpga: add ltc2497 on arria10 devkit
> 
> Dinh Nguyen (3):
>       ARM: dts: socfpga: use the "altr,socfpga-stmmac-a10-s10" binding
>       arm64: dts: stratix10: use the "altr,socfpga-stmmac-a10-s10" binding
>       ARM: dts: arria10: Add EMAC OCP reset property

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
