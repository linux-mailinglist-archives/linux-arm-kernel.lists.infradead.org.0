Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD801642A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 11:53:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KGbxpTPe6g7tmqSogLAqSCsnoY6snfGSLqJkQfteTyU=; b=IaEba4J7ZMmrJX
	FV/IVvU3Os/MkdkxaiAUL2z64o4O9NJZ85FHt2tR5JpSOo2zKnYxTdt+OxhXu08AqfXFRhCUVw//l
	NEiBPehMwZ4lKperiF/lcBDtBARuKdpC776l1ZUwCDNQE88uetIvqf5UDkl92gN5VLzMUrzZ+Lz5m
	RkJiB7pXM5d2dToS1DeH/R4FX2/UIiXQ0vyIr0Dg5nGDd1Pmjj43yCntXs6D4MPbo7mhAxmvrxmK8
	g51YsjCXGkJITdeftLpxjzuHSe03HJ5XFRfkhlpNnRyIeIp6Dkv9zsiVxFfEmbXEJpxJkhIv79FRb
	8icWVlWtkt5AEUF8rHsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Myj-0002Qk-9g; Wed, 19 Feb 2020 10:53:17 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4MyY-0002Hn-CJ
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 10:53:08 +0000
Received: from localhost (_gateway [172.20.0.1])
 by first.geanix.com (Postfix) with ESMTPSA id 02379C002E;
 Wed, 19 Feb 2020 10:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1582109581; bh=VW+jgWITWMNA+jY6FIGR7+cpj/MuFZAzw0f/ewJNF7g=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To;
 b=hMU/sPilGZlwszhd5lSoK39aqNCiUQ79DXow8DJr08WITajb0g/jA4MXJ8abVeifh
 nkhyCkvPWZLbJJDY90uF9MfKSTj+pNUX7UpiMYigxCpwXhkq5XMo0zJCBlegR62/35
 0Z3o2VRxtOYIlqL78WGk2XMqJ8fJdJ8EqTc1i+SRWkEaggvkhdi7QtQFyFoygxthe7
 3vQaSXjJFlJOnA4tS5WXh7nXt+muMECwd5KJahXqB33z1AnaRSv+ajCI2n/nNYCe3o
 TDdekERClLYPV4o8AOAStO7eOx4l7SsDD8Q5UACLCul2XRgYQhQrXU1R1B7d7yqiyH
 rMKFfq1D7sQmQ==
From: Esben Haabendal <esben@geanix.com>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH 0/8] net: ll_temac: Bugfixes and ethtool support
References: <20200218082607.7035-1-esben@geanix.com>
 <20200218.115014.2022578847900470441.davem@davemloft.net>
Date: Wed, 19 Feb 2020 11:53:00 +0100
In-Reply-To: <20200218.115014.2022578847900470441.davem@davemloft.net> (David
 Miller's message of "Tue, 18 Feb 2020 11:50:14 -0800 (PST)")
Message-ID: <875zg2n90z.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-1.7 required=4.0 tests=BAYES_00,DKIM_INVALID,
 DKIM_SIGNED,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=disabled
 version=3.4.3
X-Spam-Checker-Version: SpamAssassin 3.4.3 (2019-12-06) on eb9da72b0f73
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_025306_731722_2777F311 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, ynezz@true.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

David Miller <davem@davemloft.net> writes:

> Several errors in this submission:
>
> 1) Do not mix bug fixes and new features.  Submit the bug fixes
>    targetting 'net', and then wait for net to be merged into
>    net-next at which time you can submit the new features on
>    top.
>
> 2) As per Documentation/networking/netdev-FAQ.rst you should not
>    ever CC: stable for networking patches, we submit bug fixes to
>    stable ourselves.

Got it.  I will resend against net and net-next.

/Esben

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
