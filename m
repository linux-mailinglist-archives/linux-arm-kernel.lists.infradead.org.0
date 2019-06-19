Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1AC54B65D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NkHfrLlWmfjq87H2s4D/W6tEcMoItQGMHjIcCvMeo58=; b=BoEAxs5yFyekJvlXTnQayHax/
	bWAzwPkbvGQq0dZNk5Qac0WzN1w+piA/P0zF8Kw11L3dX9RyZ2TW1Y2oHyHZcEpLxsgLwNdUkd9qA
	kAaPRQ7WQ5fO/jn0+baSLzIDUM0hJnwpNr7LV1BcC8hpvKgLYg3o3npHsD2tKNlGXkfy3I81Sa7fY
	sWSEhSgEZ4lqS91jdIKGAMQWKXG1Buf/iVb4lGcEiEwwzabt6FXpsDid+rblIpYwj3kKY/ImBaZdw
	DaPCQbuebtd6HUWVTIGvdXWglOSnYZKbUGmJKKVv0EvIecGdcd4YWjEEsxxM+8r8rmiq/M3kLEd1l
	wVKRRmIGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdY3I-0005rw-Ay; Wed, 19 Jun 2019 10:42:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdY38-0005rV-Di
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:42:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 89227360;
 Wed, 19 Jun 2019 03:42:41 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46E233F738;
 Wed, 19 Jun 2019 03:44:27 -0700 (PDT)
Subject: Re: [PATCH v1 1/5] coresight: etm4x: remove superfluous setting of
 os_unlock
To: andrew.murray@arm.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-2-andrew.murray@arm.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <a5e18bad-214a-3485-d6af-c5c4c6837593@arm.com>
Date: Wed, 19 Jun 2019 11:42:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618125433.9739-2-andrew.murray@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_034242_959998_63B1AF6B 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 18/06/2019 13:54, Andrew Murray wrote:
> In addition to unlocking the OS lock, etm4_os_unlock will also
> set the os_unlock flag. Therefore let's avoid unnecessarily
> setting os_unlock flag outside of this function.
> 
> Signed-off-by: Andrew Murray <andrew.murray@arm.com>

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
