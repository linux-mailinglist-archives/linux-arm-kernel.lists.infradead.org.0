Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61487BF0E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 13:12:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+blrEmwESXrMpyDRExcui8P2TXY3f84ZCJxNdIO4bvw=; b=E77gYTVJn7pAbp
	AP06TjDY7tepdaPtc82zDv5jqwLr+DNJgqueimrHzaH4EaGBaHyVx9wdwsSv+y9+SyNI7K1yszisL
	fKLskitwt2NmFy9bJ032RRuwhXU9BL23tk3/u+28htT+4FJaqreC/uU+0XwmiPc+Ua851PVGzxnaE
	8VyOVt965zjHyjmyLCA+nXSsJGwqqR+YPVUDXg6CqW/QLvXGm6Yhtc6iRaO6Q0fjLGZPeqrQl4z3U
	toatfDmkR2zRrF5Y9cGM4wYmuP4CWw6K0LqLPOKmTW9tA0UVhddyIbA53ZQQYWJ86gVcQ0iNd9NnZ
	yzZK/HBs+f677V1xct9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDRh0-00030m-0Z; Thu, 26 Sep 2019 11:12:14 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDRgr-00030R-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 11:12:07 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 7373a0d8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 10:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=0KrXBh/Bsqvx7HfMQP+/WOxM5VQ=; b=SgBxyX
 4NMpvWxsmvkJGlPcW1N1PFhincDEmLASGMhzti7agl4WVuCxMjSBiAJBeRFMKAWB
 3IH22LQ39469zaaVYF53FIPATv7HE6D7Y6ija/Zvrm7cG7q1y8JPEXbTboQS3MJv
 szjScWeJmb+okPp1OjUE7WWHLtk+CRxgfpnqj2FqwKURrzS3NbNdEFxUJWGodVou
 V8+Z1WGBfY4rCD6G1fNaPKLvO8MZVzwzpZ1jwYxMA0Icp0/XFX5lKt0t5VBuryin
 cQmtXGl7ULEMD1xIuT2CNgI6kLPmaYfzZF3rzuYPrbCUW7hXY6hyKxJe/7HyAqkl
 /r5T3GNVIm77+iFQ==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 10cfb3a9
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 10:26:11 +0000 (UTC)
Received: by mail-ot1-x32a.google.com with SMTP id 41so1582021oti.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 04:12:03 -0700 (PDT)
X-Gm-Message-State: APjAAAU6WIxHLGOUU9fojRzm+3usH6jvGbCdffS88VJx3jfASlernEgK
 w7FYMuium1YDmBzjH2nV9iFRLoPYXbJDUuRFXFw=
X-Google-Smtp-Source: APXvYqydG2LXHim6dvGxKuF9QbuQYuwfWsygXO1vvnS37Hb0bd207wjixOynX7Ua7HSFpMjDtZo75uIQRCJWV6/vC2A=
X-Received: by 2002:a9d:ec2:: with SMTP id 60mr2198189otj.369.1569496022509;
 Thu, 26 Sep 2019 04:07:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <MN2PR20MB29733663686FB38153BAE7EACA860@MN2PR20MB2973.namprd20.prod.outlook.com>
In-Reply-To: <MN2PR20MB29733663686FB38153BAE7EACA860@MN2PR20MB2973.namprd20.prod.outlook.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 26 Sep 2019 13:06:51 +0200
X-Gmail-Original-Message-ID: <CAHmME9r5m7D-oMU6Lv_ZhEyWmrNscMr5HokzdK0wg2Ayzzbeow@mail.gmail.com>
Message-ID: <CAHmME9r5m7D-oMU6Lv_ZhEyWmrNscMr5HokzdK0wg2Ayzzbeow@mail.gmail.com>
Subject: chapoly acceleration hardware [Was: Re: [RFC PATCH 00/18] crypto:
 wireguard using the existing crypto API]
To: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_041206_132706_E87788A8 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: =?UTF-8?B?VG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2Vu?= <toke@toke.dk>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Dave Taht <dave.taht@gmail.com>, Willy Tarreau <w@1wt.eu>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Netdev <netdev@vger.kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[CC +willy, toke, dave, netdev]

Hi Pascal

On Thu, Sep 26, 2019 at 12:19 PM Pascal Van Leeuwen
<pvanleeuwen@verimatrix.com> wrote:
> Actually, that assumption is factually wrong. I don't know if anything
> is *publicly* available, but I can assure you the silicon is running in
> labs already. And something will be publicly available early next year
> at the latest. Which could nicely coincide with having Wireguard support
> in the kernel (which I would also like to see happen BTW) ...
>
> Not "at some point". It will. Very soon. Maybe not in consumer or server
> CPUs, but definitely in the embedded (networking) space.
> And it *will* be much faster than the embedded CPU next to it, so it will
> be worth using it for something like bulk packet encryption.

Super! I was wondering if you could speak a bit more about the
interface. My biggest questions surround latency. Will it be
synchronous or asynchronous? If the latter, why? What will its
latencies be? How deep will its buffers be? The reason I ask is that a
lot of crypto acceleration hardware of the past has been fast and
having very deep buffers, but at great expense of latency. In the
networking context, keeping latency low is pretty important. Already
WireGuard is multi-threaded which isn't super great all the time for
latency (improvements are a work in progress). If you're involved with
the design of the hardware, perhaps this is something you can help
ensure winds up working well? For example, AES-NI is straightforward
and good, but Intel can do that because they are the CPU. It sounds
like your silicon will be adjacent. How do you envision this working
in a low latency environment?

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
