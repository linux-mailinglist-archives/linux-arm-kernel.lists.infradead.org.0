Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAB454FDC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 15:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFT/tk1dUi5jMJvwq7s63J1NemOcQsrlqp0Y6xxi/oQ=; b=Vv2eqhLSYR2s8M
	bhXH/ORbFyusOc2fCwR7P69vLxxtel8O0xnnXl8qNkKZ6RGGi1l0MGs8h+6vyKK4wHGAAXJ4N+oBL
	Jwa1dN7JVipFZVi3qA9Fxqz4HzWWSo0AkgoHYcbjDgFfPKMPL7E9lZZL+HH7JG4IOAfPUAtlMUwnm
	1JVgMTK95UomXJvIze/PxJJHP3pZ4HBMPuWjZzpzDN9/HeoTCpTVuHy1nZilsCvfuPhkA0EoTMiC0
	IgoS+uEc+zUJeSUJ1hLAwGOaFqWFUP9GqAbn8AgMqL4YUqp/9QGmt1UXOzMIUPlL5T+EA4JY/gMUe
	zjaFhL0n9+rV8QEk26oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hflCT-0005wh-PM; Tue, 25 Jun 2019 13:09:29 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfl84-0001ey-T1
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 13:04:58 +0000
Received: by mail-lf1-x141.google.com with SMTP id j29so12556598lfk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 06:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=kBev9BNjHzl4Q2/BQXh/tLq6nIvoU+mOJhmxYqO9F40=;
 b=o+Ab9LUkViKhC9BBighGPDC9tscepqiufmmSc4gn1NeJ0EkO4uJw3XnBTXWAuhy0wH
 BpKR9LMFxfWRiuwTJmYF8KBodCfw4uL918sJsJY9GnR++jphAqjanw/F2bP5yhPbxyU4
 cFOymUeX2LwsY7OrfM3OGTrR0Yk63foTvpNYYzoIIWSUl23Bsg0iJC1kJ9oQtt73N/lZ
 +Qm2YcN21WptW5WLQCprgmh0q4ezfy6Yg9W9mq9hz4HGtcSMRnbu9xS1pFIP9BNOSx3J
 +H/iLZNDlQ4aN9fA5Yd8mxY7ciG3czAq9Fu+x9mMB/rrsHwLjpbTsQMQgARKU7q6IWB8
 qPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=kBev9BNjHzl4Q2/BQXh/tLq6nIvoU+mOJhmxYqO9F40=;
 b=F9a1fzQLmEgoMQNwR8ZHP73ptkeH23uRDl2mqR2JbWz8itjkhzb9RKAD04SYviL9i6
 pp9Konhcuzkz6Ghx7ZxaNhTjEO0PErkot/PY++H/W6wX2Pz4UBD9+uLTNBSNCP+RB9DH
 Qpttym0S1WCQZzJ/5U/JqcTcKH/dEaRKDhntRMBSf9ucGSSj6olmDVAwvNo53xYWgbuW
 ZGtZwEemm4ul1k46aaYIzQ/KIil7b1VEfHMjpZGrbiftCXyjLEScQwaCoyscEGf1eBZB
 aEicjVMfMj57O39n+6pGRrnmdwRQBaCACqE56qzIJ6Cew2muqotuB+2QEGO4ttGBBQXt
 s87Q==
X-Gm-Message-State: APjAAAW7yv3YDYkZ9l7m/key5fVBYue9upI9X0Fcj8na/edxkJV3x7T7
 Vn0c/SPiJCkw9SxeEgyePjLlRg==
X-Google-Smtp-Source: APXvYqz8LlZT+sjTMv7dxX6avNHS2yBP6pUtrc84HUNGxbUm98TYaZFlTrlLTdb+jwv8F4XP0hPjXw==
X-Received: by 2002:a19:491d:: with SMTP id w29mr2449222lfa.149.1561467895500; 
 Tue, 25 Jun 2019 06:04:55 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id b62sm2243815ljb.71.2019.06.25.06.04.54
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 06:04:54 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:43:20 -0700
From: Olof Johansson <olof@lixom.net>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [GIT PULL] ARM: aspeed: soc changes for 5.3
Message-ID: <20190625124320.swddlaa7uyobu2h4@localhost>
References: <CACPK8Xdpd3Q7dexOEZqt9rP0KJz1XeRwXe6A1k1azm7eDhRm=g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8Xdpd3Q7dexOEZqt9rP0KJz1XeRwXe6A1k1azm7eDhRm=g@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_060457_018762_DD357F41 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Jeffery <andrew@aj.id.au>, arm <arm@kernel.org>,
 linux-aspeed@lists.ozlabs.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jun 22, 2019 at 07:59:26AM +0000, Joel Stanley wrote:
> Hi ARM maintainers,
> 
> Here is a small soc change and a fix for that same change. This is the
> first time I've had an aspeed soc pull request, so here we go.
> 
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/joel/aspeed.git \
>     tags/aspeed-5.3-soc
> 
> for you to fetch changes up to c8a3b9b50d8331528fc8d03aadd1fec3d60362d7:
> 
>   soc: aspeed: lpc-ctrl: Fix probe error handling (2019-06-22 16:56:35 +0930)

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
