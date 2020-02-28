Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D88172FC1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 05:22:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnRrYXBFkQiHFVJS9rzGwTIkJuRtTDjRnUokhjrwA4E=; b=Lt0+UpNejan5E+
	JQbkWcZa0ba/VqdScTpmkKf4jvxNOk6O6xsG6mzkf8PWBX6In0wxVi/CgQ1zPowkrcm05DAt2iNke
	CGAOpjldzhaz15P7/Fwb83pSFF68jGm+9ZmFwqADT6HkT853yQvDbEBlbcPv4BM9iGOI0RTYclo0C
	tA386K964rAf58d6sVXxJqA3Y4PFnU639e4hChFlTKoG1Wc7CiEH82VzWCspIKgIOZ3wyvz+/CeQa
	jCH3WYE2xb0k9u4BIUhNEz3YCuoWoO+1JHcU5sD3F0x160gTmB/TFlsmsA/azmEpBLtU7COM+Jg62
	aY8LM6NY7S/cC/ZNFRxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7XAn-0002rY-OB; Fri, 28 Feb 2020 04:22:49 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7XAd-0002r7-8R
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 04:22:40 +0000
Received: from callcc.thunk.org (guestnat-104-133-8-109.corp.google.com
 [104.133.8.109] (may be forged)) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 01S4MOBC030696
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 27 Feb 2020 23:22:25 -0500
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id ACC8C421A71; Thu, 27 Feb 2020 23:22:23 -0500 (EST)
Date: Thu, 27 Feb 2020 23:22:23 -0500
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 0/4] random/arm64: enable RANDOM_TRUST_CPU for arm64
Message-ID: <20200228042223.GD101220@mit.edu>
References: <20200210130015.17664-1-mark.rutland@arm.com>
 <20200226102422.GA21484@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200226102422.GA21484@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_202239_468252_147B1976 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, richard.henderson@linaro.org,
 linux-kernel@vger.kernel.org, broonie@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 10:24:22AM +0000, Mark Rutland wrote:
> Ted, sorry to ping, but do you have any thoughts on this series?
> 
> I'm happy to rework this, or drop it if you think it's completely wrong,
> but if you're not too concerned it would be nice to be able to queue
> this soon.

Thanks, I've applied it to the random git tree.

						- Ted

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
