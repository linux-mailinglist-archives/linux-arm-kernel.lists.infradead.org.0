Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D90E435E3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 14:27:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2pvtyaRN1LmvKvFvcaOGcvc5xe9VqIcFfCZIhOcKJjo=; b=pjJaieRc8T8llY
	67YIIqFEBqZsS3mdGqs6euxhDEeOO8Dn1nLz0YkLA2UlqX6u3QSnDshNeHZyfGFkMBTq9/9idk5uI
	YxRqrMV8MMb/v1dXlXfPoR6cwEOEovkeA3HBa9psRNdY62F2BfBMPPLWnexMr/4yz1hCC0pL7JTOy
	S/whipMuXbkqO5syqEovAotCD3ytIrZL1yhaEP974/ZvHDOC11TKx4Ghe1Mn6DVz0NRIwFIqqaQog
	oo1TycTDrc72Tpdm9T+UlQduCjilZVPO9MQKF90OFo5GBIn+mq+vQoHbtTOj0GOwDcp9z2mZieaSr
	7q5ngF1CBDMG8AnYeAAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbOpF-0001Rt-5W; Thu, 13 Jun 2019 12:27:29 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbOox-0001QH-5x; Thu, 13 Jun 2019 12:27:13 +0000
Received: from [172.16.25.12] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1hbOol-000152-4t; Thu, 13 Jun 2019 15:26:59 +0300
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
 David Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Arnd Bergmann <arnd@arndb.de>,
 Vasily Gorbik <gor@linux.ibm.com>, Andrey Konovalov <andreyknvl@google.com>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>, Miles Chen <miles.chen@mediatek.com>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
Date: Thu, 13 Jun 2019 15:27:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_052711_224726_C3C91FA4 
X-CRM114-Status: GOOD (  10.91  )
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 6/13/19 11:13 AM, Walter Wu wrote:
> This patch adds memory corruption identification at bug report for
> software tag-based mode, the report show whether it is "use-after-free"
> or "out-of-bound" error instead of "invalid-access" error.This will make
> it easier for programmers to see the memory corruption problem.
> 
> Now we extend the quarantine to support both generic and tag-based kasan.
> For tag-based kasan, the quarantine stores only freed object information
> to check if an object is freed recently. When tag-based kasan reports an
> error, we can check if the tagged addr is in the quarantine and make a
> good guess if the object is more like "use-after-free" or "out-of-bound".
> 


We already have all the information and don't need the quarantine to make such guess.
Basically if shadow of the first byte of object has the same tag as tag in pointer than it's out-of-bounds,
otherwise it's use-after-free.

In pseudo-code it's something like this:

u8 object_tag = *(u8 *)kasan_mem_to_shadow(nearest_object(cacche, page, access_addr));

if (access_addr_tag == object_tag && object_tag != KASAN_TAG_INVALID)
	// out-of-bounds
else
	// use-after-free

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
