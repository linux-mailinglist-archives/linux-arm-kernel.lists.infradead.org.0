Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C250BF211
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 13:49:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pd9VskoUjSzPS1ydzslDQmjUyeHh18oZml7uZB2uug0=; b=sF9awVM1yC0Ghr
	70eyy3asvHzHtHq2xJnjxPNoznzwmyv3QN2Vf+Dvh2TgM2FxaEKY/YJHPT91KNIkmC7ETcofOEnQI
	IY3WJVscGRDRWDweulcXnFzv6AELN2dKpgkB3JO7fffDv8yIIxWwT9kOSQqiEg8Po1JJMWtt3GRz2
	5m185YONT4x8q2a4KV3QN09S487MX3YI7nFglEQYD7cKU+JlVHI2Ns3QD3aqP/5HHMCl0xarhgqO2
	KXvDMiYwjfU4/SArMLBTdYJafA26DEhoCH12C6GCVTBueFuoOJ3wrXjLKTqdqpEJp0OMXg+OENDXt
	qTu3BTpGq6DPvXcx2TqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDSGS-00086W-Oi; Thu, 26 Sep 2019 11:48:52 +0000
Received: from mail.toke.dk ([52.28.52.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDSGK-000863-50
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 11:48:46 +0000
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@toke.dk>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=toke.dk; s=20161023;
 t=1569497917; bh=2ozAWmHQqzsPDD0WmdG2auChc9T1w49xSlDI6ZfDT7o=;
 h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
 b=E7B4xf/sxTyXBeJoIGW4nq+Nma+qA/w0+mvTe4vhnAMnXOMwoNqN3gDE5hVdmdNzh
 /cy8vHjKBAT2ogyoiI6miZ76hx67WQMVHN6a2BVqXmNEVEsuXo+5o7swBUAPCBWqHv
 VMmzaEdMsV2Uv19vqCGkyzwg2EJEb01nOVmOnVhCTdWd4ObjWDaCmz3mtvmwvX1xkx
 N27rxXs/S8RzJjikh/vluQgPD3Jx6octJQQJEEF38ED/mcB5ByakvsgPj4OAYlok2R
 So9Nhhgnw01AwyOqMWr8VQnGQ5pUR3ZKQGpfV25KDOG2KIbUNkX5Z+F9X+p9L2Xo7C
 n9nJBQm/HWwGw==
To: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
Subject: Re: chapoly acceleration hardware [Was: Re: [RFC PATCH 00/18] crypto:
 wireguard using the existing crypto API]
In-Reply-To: <CAHmME9r5m7D-oMU6Lv_ZhEyWmrNscMr5HokzdK0wg2Ayzzbeow@mail.gmail.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <MN2PR20MB29733663686FB38153BAE7EACA860@MN2PR20MB2973.namprd20.prod.outlook.com>
 <CAHmME9r5m7D-oMU6Lv_ZhEyWmrNscMr5HokzdK0wg2Ayzzbeow@mail.gmail.com>
Date: Thu, 26 Sep 2019 13:38:36 +0200
X-Clacks-Overhead: GNU Terry Pratchett
Message-ID: <8736gj2soz.fsf@toke.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_044844_533842_F80D59FE 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
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

"Jason A. Donenfeld" <Jason@zx2c4.com> writes:

> [CC +willy, toke, dave, netdev]
>
> Hi Pascal
>
> On Thu, Sep 26, 2019 at 12:19 PM Pascal Van Leeuwen
> <pvanleeuwen@verimatrix.com> wrote:
>> Actually, that assumption is factually wrong. I don't know if anything
>> is *publicly* available, but I can assure you the silicon is running in
>> labs already. And something will be publicly available early next year
>> at the latest. Which could nicely coincide with having Wireguard support
>> in the kernel (which I would also like to see happen BTW) ...
>>
>> Not "at some point". It will. Very soon. Maybe not in consumer or server
>> CPUs, but definitely in the embedded (networking) space.
>> And it *will* be much faster than the embedded CPU next to it, so it will
>> be worth using it for something like bulk packet encryption.
>
> Super! I was wondering if you could speak a bit more about the
> interface. My biggest questions surround latency. Will it be
> synchronous or asynchronous? If the latter, why? What will its
> latencies be? How deep will its buffers be? The reason I ask is that a
> lot of crypto acceleration hardware of the past has been fast and
> having very deep buffers, but at great expense of latency. In the
> networking context, keeping latency low is pretty important. Already
> WireGuard is multi-threaded which isn't super great all the time for
> latency (improvements are a work in progress). If you're involved with
> the design of the hardware, perhaps this is something you can help
> ensure winds up working well? For example, AES-NI is straightforward
> and good, but Intel can do that because they are the CPU. It sounds
> like your silicon will be adjacent. How do you envision this working
> in a low latency environment?

Being asynchronous doesn't *necessarily* have to hurt latency; you just
need the right queue back-pressure.


We already have multiple queues in the stack. With an async crypto
engine we would go from something like:

stack -> [qdisc] -> wg if -> [wireguard buffer] -> netdev driver ->
device -> [device buffer] -> wire

to

stack -> [qdisc] -> wg if -> [wireguard buffer] -> crypto stack ->
crypto device -> [crypto device buffer] -> wg post-crypto -> netdev
driver -> device -> [device buffer] -> wire

(where everything in [] is a packet queue).

The wireguard buffer is the source of the latency you're alluding to
above (the comment about multi-threaded behaviour), so we probably need
to fix that anyway. For the device buffer we have BQL to keep it at a
minimum. So that leaves the buffering in the crypto offload device. If
we add something like BQL to the crypto offload drivers, we could
conceivably avoid having that add a significant amount of latency. In
fact, doing so may benefit other users of crypto offloads as well, no?
Presumably ipsec has this same issue?


Caveat: I am fairly ignorant about the inner workings of the crypto
subsystem, so please excuse any inaccuracies in the above; the diagrams
are solely for illustrative purposes... :)

-Toke

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
