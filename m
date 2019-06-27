Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C3657C67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 08:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2b+axuv/aIyNkVhnnLC80y0iKBQKAKUC6p+qBQkyFA=; b=ACZKkN479Z53Ac
	gYFjQS1L3ALdpkylhOxId+ZfcmjyNOPhk6jnQ8WzH3D62TlL/IwYdi05OSDNPeWSIzdYZeEvYqveW
	DSqRmGFcOJ2EaWmsuEgIk8Y69EnekhXsp+NgKHXnQd5imuvtP5qU9BBtVTk7lmi0SSx7eNK0LFCN9
	yWbgSzw5Y4/b9DANYXTrjJbJcBGMDCLC9YvlpWzYGZbSAfTBLysyw6p9ZEK84DVQBEZREN6e3s3Th
	UfdC5mYTG6CXk6Xsf47uj3Re3mNMT+ZRMfQFQP88+WQ9HLrqp4Uy2bGBI/6OMpFRwGdk4b7l+wQ67
	/xyQSIWOVbKDZhJdD9Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgOC5-000255-8I; Thu, 27 Jun 2019 06:47:41 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgO8H-0006KM-FM
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 06:43:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BagUEWU4JMaHfO4zEh4KFO/Co7whzZQUVnKPwZipvek=; b=GJ6tHAnb579Sqm10c9MRUDI9L
 ZhmSQvd30NQqmkVcmDpsJdeVnbRM1/x5SiK5MOaLUfW1nFrxK2Q7zoN3wikDph+3WZPZaGtACSYRB
 HsZpG7+T+qUL4E9DKJWiW/7p8Kih55A2LfkbKe1DI8iAj6JzHB54fwLE/KO5OVv5iQyDQA13Gxv6A
 xF15wwGDS66MewYPBpKKkAYKWoxJ5FwvwNDDKtY/zwQ6Mst1ea7dO1ZuJXMc1W39DZKHPe3x3d06c
 HfrGv1v23rA6yQFJDu16kCvIjiPnNvm0NNEqL+EPhPU4IyVngystq+VtYAbgd2IeDNhuNY1ceaQuw
 kq+Qle9FA==;
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgKaJ-00067f-K9
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 02:56:29 +0000
Received: by mail-io1-xd29.google.com with SMTP id m24so1457464ioo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 19:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BagUEWU4JMaHfO4zEh4KFO/Co7whzZQUVnKPwZipvek=;
 b=YGhLEWHgOxYUTi12mztc4zACgIfgOFXXQtwVCDQdgZZ5Idb6wRBZ6SHIcYyqtZOGvP
 Xvrdjqc6ovw7D82uYHVS63ATHXt2uHzigP8GDl+M4wO3mRX1pR87ESM0Af0gN2E+zdeC
 5aWa+HibGrO/Tpu2d+3ZbzBK2Nr2qzm12961fah4xcLctsMfF09nEG1X3NzXt9z9Yu1k
 vkGrEO9z+kI/+xT+QU+2ZuJbFN+Ep6M37aYvqsL+5nF/ZsyENcU5GQpP0JVaxG/qbdse
 CAgPGhMQYRUtdgYtBcaJFiRXgzxjGl7Pnkc7AWxasjIOZlKJP25fZHmHpXJlf9sUD7o8
 kHrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BagUEWU4JMaHfO4zEh4KFO/Co7whzZQUVnKPwZipvek=;
 b=UKY90IE8Q61LgN0GPYRPLSa/QHqokRw6hbjegWqd1eYqQWpTepF5kQ6YNW8nzGfjZE
 JCvy1ri4SxJFgNbHk+TrkkeWc20x8QOcxzeKu2ckgP4xNyb2GGbIk4veprVeB2UX8Y3C
 t/FmRmkjCe0GoEhEj4wI3qpiCz+EvrleO2GD1SZqHs9G47NkM07mVPM1owq/ZVsOfq9V
 jMOoQJffgZ7IkCqn0pY7OBJ+Iu6b6ksgNKY2Mwx0PSrX9MV5+omqUDqYOrrTOEMO2ThH
 dSrjga1zUaFcQspOd9BfNMxsChEOJAXkwCZhMLVses9hKPn6pnxNu1GBmE/iF3vZFtxD
 wKDA==
X-Gm-Message-State: APjAAAUj0cbD3DJe2Q4S53hNwYwKfd5LNNx/EqFlUGLVar7i0EIsoVM3
 9BBmwbcgQxwsFCTxhkXqhkaVylOAKIFw0f0UVOkFWA==
X-Google-Smtp-Source: APXvYqyjwjH6PcvtE2d5Vc+6EVj/KlkhOIZ+KK8G/WFrida+Tfh6HoRg7rLd58y0rhwH3GzlJtI5y8fglRHWLesopwg=
X-Received: by 2002:a5d:9282:: with SMTP id s2mr1744443iom.36.1561604124107;
 Wed, 26 Jun 2019 19:55:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190626135422.eebzw2nosygkzhy3@verge.net.au>
In-Reply-To: <20190626135422.eebzw2nosygkzhy3@verge.net.au>
From: Olof Johansson <olof@lixom.net>
Date: Thu, 27 Jun 2019 10:55:12 +0800
Message-ID: <CAOesGMgvQTPm-7iyvbns+rCG54vtppJwSWbT20BuggUBRcwknA@mail.gmail.com>
Subject: Re: [Announce] Renesas SoC Co-Maintainer
To: Simon Horman <horms@verge.net.au>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 ARM-SoC Maintainers <arm@kernel.org>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jun 26, 2019 at 9:54 PM Simon Horman <horms@verge.net.au> wrote:
>
> Hi,
>
> at the end of the v5.3 upstream kernel development cycle I will be stepping
> down from my role as Renesas SoC maintainer. And starting with the v5.4
> development cycle Geert Uytterhoeven will be taking over this role.
>
> I'd like to take a moment to thank everyone for the support that they have
> shown to me over the years. And for the contributions of many to allow
> the upstream kernel to support a wide range of features on a wide range
> of 32 and 64bit ARM based Renesas SoCs out of the box.
>
> Lastly, I'd like to wish Geert all the best in his new role.


Renesas has been a very high volume platform with lots of upstream
participation, and it's been running smoothly for a long time. That
takes a lot of work, even if it's not always visible.

Thanks a lot for all your work, Simon!

Geert -- feel free to find us on IRC or email if you have questions as
we get going. Sometimes it takes a few iterations to align workflows,
but you've probably been observing for a while already. :)


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
