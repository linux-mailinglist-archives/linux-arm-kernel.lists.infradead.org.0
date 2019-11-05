Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCF8F0422
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 18:32:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6wbEpHx3R3kWN+IU9B4Uno1dlnET57ySw1WlZ4s6bYo=; b=NSXs6zIdQNwrIR
	KS2b1sxKyEdB+ARSLWu8KKZMXGpRl55If+7H3DLe81p42LcrWNBzNo7c47yWRu3hDJT5SfhyvUTWT
	o+lhaV3yih1teHLzcB5yDTMhKAObSCujwv4lLQVAEuGJokKKX9gMrBjVLW69Y8+EWeEE5Of22CmWm
	avmZyAo+06lx3ijT1Xbz3YTO0XUh4tE5klWhztlL3JPHEpx9HoThNR9KZgnHPBa9gAq2HIC7yVQMm
	EAUzJn8iYK/NPvvf4D2D43tNE0DgQbE5CrWEsuhrRiYk8d0QxAj2w6QpC6GpHlMC0meJXAdgIwZa8
	eDBhuUgzl18KSWYRgiLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2hF-0003WP-4d; Tue, 05 Nov 2019 17:32:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2h8-0003W3-1Z
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 17:32:43 +0000
Received: from sol.localdomain (c-24-5-143-220.hsd1.ca.comcast.net
 [24.5.143.220])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 314BB2087E;
 Tue,  5 Nov 2019 17:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572975161;
 bh=uT3bEZMqcvE0LO6gjZrYNNNtYgoxVgzmdR0oJRRV3Q4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q8ZNADz7U0snS9szacn2Cr5QJ/4QCcW1W0a+DJICsARMF1kCYi8Kr8vNKI9gh4JdG
 9LRW/573QUVpGcLX98RCqH58tH6/xZX+BIQes9bGMgtwhJTJdm7SyvI+8DCgo3Lfh8
 V4SAJ4hnBqXK34lpTuv0bjdCHmD9poqXaCmOHs64=
Date: Tue, 5 Nov 2019 09:32:39 -0800
From: Eric Biggers <ebiggers@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH v3 03/29] crypto: virtio - switch to skcipher API
Message-ID: <20191105173239.GB757@sol.localdomain>
Mail-Followup-To: Ard Biesheuvel <ardb@kernel.org>,
 linux-crypto@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, Gonglei <arei.gonglei@huawei.com>,
 virtualization@lists.linux-foundation.org
References: <20191105132826.1838-1-ardb@kernel.org>
 <20191105132826.1838-4-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105132826.1838-4-ardb@kernel.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_093242_101639_9942C392 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 virtualization@lists.linux-foundation.org, Gonglei <arei.gonglei@huawei.com>,
 linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 05, 2019 at 02:28:00PM +0100, Ard Biesheuvel wrote:
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.

Strictly speaking this should say "ablkcipher", not "blkcipher".
Same in the other commit messages.

- Eric

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
