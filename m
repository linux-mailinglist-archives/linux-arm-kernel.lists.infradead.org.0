Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C93C78167
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 28 Jul 2019 22:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yVZX8v6JvYwOJOwymmk4J/CfGNVeQi92l4KR2Ldc/cU=; b=mpSIDFvFmZA4I7
	KuZnBniqXiA8G1iTBNMFEkLusfKDLFUNGRLAgscHw86nC2RMqYQs7XdkkM5weYWnEm80AFN7YwjXY
	WOofJQ/08eBpICVCjJ/+06yrMxXSdQUn8vN1dKiBqLbV04Ub0mFdLFmWBoAR+F0YfOoUXo48Bk38o
	jEQY2bl4j7YqOtXX1HZxU36MDqu5EPhYLWX2TEf8vNkMc+Ww9SacnhIjK8Hc4F464olwLL+jAue87
	ds4+RVudBk0lEytxdP9AdOE4s8LKOjHvMV7j6hCr2iTgbCqANb4vHOzG+Yon7ITKaCYFUER+utqkB
	i7MNm1WmFSGyXNlM6dLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrpah-0000Qj-C1; Sun, 28 Jul 2019 20:16:23 +0000
Received: from esgaroth.petrovitsch.at ([78.47.184.11] helo=esgaroth.tuxoid.at)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrpaV-0000QN-6w
 for linux-arm-kernel@lists.infradead.org; Sun, 28 Jul 2019 20:16:13 +0000
Received: from thorin.petrovitsch.priv.at (80-110-96-12.cgn.dynamic.surfer.at
 [80.110.96.12]) (authenticated bits=0)
 by esgaroth.tuxoid.at (8.15.2/8.15.2) with ESMTPSA id x6SKFaJB008567
 (version=TLSv1 cipher=AES128-SHA bits=128 verify=NO);
 Sun, 28 Jul 2019 22:15:37 +0200
Subject: Re: build error
To: Matteo Croce <mcroce@redhat.com>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
From: Bernd Petrovitsch <bernd@petrovitsch.priv.at>
Message-ID: <57eeca23-3f03-cfd2-280e-4b19eb84b65d@petrovitsch.priv.at>
Date: Sun, 28 Jul 2019 22:15:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAGnkfhySwXY7YwuQezyx6cEpemZW4Hox1_4fQJm3-5hvM3G6gw@mail.gmail.com>
Content-Language: en-US
X-DCC--Metrics: esgaroth.tuxoid.at 1290; Body=4 Fuz1=4 Fuz2=4
X-Virus-Scanned: clamav-milter 0.97 at esgaroth.tuxoid.at
X-Virus-Status: Clean
X-Spam-Status: No, score=-0.4 required=5.0 tests=AWL,UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.1
X-Spam-Report: * 0.0 UNPARSEABLE_RELAY Informational: message has unparseable
 relay lines
 * -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on esgaroth.tuxoid.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_131611_551629_C15D0964 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [78.47.184.11 listed in list.dnswl.org]
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
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all!

On 28/07/2019 22:08, Matteo Croce wrote:
[...]
> I get this build error with 5.3-rc2"
> 
> # make
> arch/arm64/Makefile:58: gcc not found, check CROSS_COMPILE_COMPAT.  Stop.

- Install (some) gcc?!
- Fix $PATH so that (some) gcc can be found?!

MfG,
	Bernd
-- 
Bernd Petrovitsch                  Email : bernd@petrovitsch.priv.at
                     LUGA : http://www.luga.at

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
