Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861D61A83FF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EDS+RPtBHx7QQraJzbnJjc89gPbJPa9xkAwxZL7ttQ8=; b=dP+v7kOBOdSrqZ
	DiqRC7iy1YpvyVBfpCHT/jc4y8UP4Dldut7F4g/z2G575ZNNlHf5mjLzV2OuWRFKeEw/Mf+OS0iEW
	Z6Oa4sjZ6tCKeqHLsnWxWUWxiMv1uOng3vP/vDduoSeCV0JmwcV+u5dxFij6KTbeGWcGsWPOoHY7N
	eHeEh3F5gLOmbxIRSHRcclEQ2daZTd/1hsfnA1Y9RltXRDVnN5obtsRGelIzZQIEY9R+3v5WImuhx
	ZualHsE2kGQV/tpwgoIGNHAUHAa59N+Y9WVNmPEOAj9OK2kfR3QGstaohLghIdcnIuN1rr+tJaNiT
	LjzOTGUfNnKrpGrW1/wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jONyX-0004gk-7W; Tue, 14 Apr 2020 15:59:49 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONyK-0004bp-KX
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 15:59:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id k21so368841ljh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 08:59:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Rms6uY6CaVS0vSi3goxkK0o2bZJ2P/sEKrGiTc8JDbs=;
 b=Knet1f2YFczx+Bvkly4ATsCcdhmrsklTebUitDqlLsMrw3LqMzvVruqj3CQPZKV1Yj
 /ycBcRyNhoItxGuHJPwS5RlOu6J5b+tRlSpyQpky4b7DCAZVp3IWHe0eFjX+25qzXN4j
 T56HyXBHYqBKKaGTA5TytiwH64ksyAH9Ai653dTMo1Kw5uisWioqbeKHdeo+IBOmRdix
 o/1MUYYNYJfED04KUzqhbJdrDwnRbHUQoRQ74Aop0Cn5LIATsrWwIuZOO64noMdNVpns
 G7GjhicmqH3L3N6dB1nOyQUq2nB7C5L84kfOO7NB6ytZ+tkaHGDdowd471QUwf/fNBTh
 zB2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Rms6uY6CaVS0vSi3goxkK0o2bZJ2P/sEKrGiTc8JDbs=;
 b=o4Q7c8euyjc8iC4/goIzOIqPbaGCKsI7mRoa2o32DzI2pOpReHy4L1+skUxkEkEde0
 LfU+tFB3kdvk3+rrqyn76yYH4kNiyd/PGnzJc8/KtApFGsTEq4uOiUOpY5IKs13JRgvy
 vLjEScEjNDldmGCmP3oCImwo5hjf+HBGBfJYoiU0rGgnbg/Q9lJYC3Bz8Ws9eYpwjKc2
 TLPH0ME3XpL4mm9/Xb29WYZFIUirD69Cf9i8Bt9x3xTuXUS/HP0JxMOY6rEUqb26E2NM
 WbatG9B7QJJXLwqmBFusrNbbk9p2KjQyEnDVmepQSit6iyOFsvso9ZFOIHzBvSHBqhcM
 Xm0g==
X-Gm-Message-State: AGi0Puawzb7r1lYCP5oI4Ob1gHBx5AK1o73v5i/UTWJqfXbHH04gGjv1
 aqnEV0ZTPH4w5w1dDM2smcI=
X-Google-Smtp-Source: APiQypKoehuSnG4FD3G0KCu9dyHnNmILoTThe26Z09YTqPw9oyFO24Qc3tSrK+0QjMZ4BVcUiGn4rQ==
X-Received: by 2002:a2e:854e:: with SMTP id u14mr504262ljj.182.1586879974504; 
 Tue, 14 Apr 2020 08:59:34 -0700 (PDT)
Received: from curiosity (ip-195-182-157-78.clients.cmk.ru. [195.182.157.78])
 by smtp.gmail.com with ESMTPSA id
 r20sm7278237ljk.42.2020.04.14.08.59.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 08:59:33 -0700 (PDT)
Date: Tue, 14 Apr 2020 19:03:54 +0300
From: Sergey Matyukevich <geomatsi@gmail.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [bug report] armada-8040-mcbin: 5.6-rc5 boot failure
Message-ID: <20200414160354.GA463339@curiosity>
References: <20200413220520.GA25917@curiosity>
 <20200413222645.GT25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413222645.GT25745@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_085936_669093_5BFEEA68 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geomatsi[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Hi Russel, Miquel, and all,
> > 
> > MacchiatoBin Double-shot board fails to boot v5.6-rc5 kernel properly:
> > USB, PCIe, and ethernet interfaces are not enabled. Before that I have
> > been running v5.3 kernel w/o any noticeable issues.

...
 
> > However looking at firmware version complaints, I guess that the actual
> > reason of all those issues could be in ATF version rather than in the
> > latest DTS changes. Probably I am using ATF version which is too old
> > to work with up-to-date kernel: armada-17.10.3 from atf-marvell
> > repository on github. If this is indeed the actual root cause of all
> > the issues, then could you please recommend a preferable ATF version
> > to test with ?
> 
> I would strongly recommend upgrading the firmware in any case, because
> of work I did (and submitted back through Jon @ SolidRun) to improve
> the eye mask on the 10G Ethernet interfaces.  I'm using the 18.12
> version.  Firmware build instructions can be found at:
> 
> https://developer.solid-run.com/knowledge-base/armada-8040-machiatobin-u-boot-and-atf/
> 
> I've booted 5.6 recently on a number of Armada 8040 based boards
> without issue, likely all running the later firmware.

Thanks ! After ATF update to 18.12 both USB and PCIe are working fine
without any changes to DTS. But network interfaces including 1G copper
interface still do not work as expected:

$ ip link set eth0 up                                                                                                                                                                             
[  626.774003] mvpp2 f2000000.ethernet eth0: could not attach PHY (-19) RTNETLINK answers: No such device
$ ip link set eth2 up
[  504.054084] mvpp2 f4000000.ethernet eth2: could not attach PHY (-19) RTNETLINK answers: No such device

I have not changed configuration since 5.3, so all the marvell phy
drivers are in place. Is there anything in configuration that could
be missed after moving from 5.3 to 5.6 kernel ?

Regards,
Sergey

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
