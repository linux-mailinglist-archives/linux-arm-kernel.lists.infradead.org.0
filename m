Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D676F9A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:46:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bXT6PICQHl+PHiR96oP+rtG5AjJHtlKCn0t9p8XXECM=; b=Kz8kqP2YLBweVNoUbbxNCMyDk
	kMfrEZFFQGN6vvPT+15oAHGShuSHQgjmak558RBY8MZro4RaEyPdorjRuiWz+6kAYSIBYU436eQ5O
	rGKVGBB6YJz+VoYAtnkC3a4BRcTxgYFUJzcpExpd0xMeDvKBm34yLwLRPJ3o2KY4d765XZNtWeE0U
	0D0BxKnC9qeis0+ukYpsxqjvV6v7+sSKvh9qcYyudROuKg1shEIQpkacd6tAN9K2vmYOti00m68JD
	C7aFGyxBx4CApq1jpI2CF9zztOXB687FM/pyRpzpMy417yp2dYK+xc00OF57PYLy92H7KzG6Igehp
	z1kq2egGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpS5r-00028d-3e; Mon, 22 Jul 2019 06:46:43 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpS5d-00028H-R6
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 06:46:31 +0000
Received: from [192.168.1.110] ([77.2.59.209]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MNc5b-1i51pF0Ovj-00P4oA; Mon, 22 Jul 2019 08:46:22 +0200
Subject: Re: [Question] orphan platform data header
To: Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
References: <CAK7LNASyzmYjjBkFxRc06rqf36-en-bvJvrKcg6iiRfjoPCxhQ@mail.gmail.com>
 <CAK8P3a2AeUpmNfFLJSvHT=AJ0kFRT2B=TWDm0HsTwoHt2jQ0gQ@mail.gmail.com>
 <CAK7LNATPbCjwzVnAigsQ8tQRXjC31uxgPg3jgi7pwp+N1RPgWw@mail.gmail.com>
 <CAK8P3a3cURmbGZc-6ESLjrF465VLnBroD4QENyfsSsCrNenRrA@mail.gmail.com>
 <CAK7LNARN=iNmresDJ2=J1wOb2QYoZ7yw4O0Q9sYVPo0jRKDf=w@mail.gmail.com>
 <CAK8P3a133ekPqkLWfC2ee0mT3iLbFzSjJ9FDokSyaX+hMVigKA@mail.gmail.com>
From: "Enrico Weigelt, metux IT consult" <lkml@metux.net>
Organization: metux IT consult
Message-ID: <21af683a-a188-7aa9-9c82-98c02b8717f8@metux.net>
Date: Mon, 22 Jul 2019 08:46:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686 on x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a133ekPqkLWfC2ee0mT3iLbFzSjJ9FDokSyaX+hMVigKA@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:9dtO+brhHUPp2BTGZGnOp0LJFTGTaPIPQgAk9TE0Oo+y+orSBnG
 GFTm0ACoUMGF+ymOvbCKopDw9OX+lA4jagfbsRrnoqPbRMskVINF2wsTWff4SLJqimut+AR
 U5i4R8HbzDEGHkRlq3qWO1jw1l3Cr97NL+zYhJdzAuLkNuoENolnd58oGAHbe7V+VQyyjbS
 Aj11//EEu1nYaA7ALaMIA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RubfnpIZtNw=:MLhF8OdhqB5U8pcgQr25Px
 truEgtXHMmKLT0QRh0P1FqsytX7B8Xfpk7kUCJ90hL7akLLz6IndxEr946MoD1VUgv4xAHuef
 DnTu7nMFo28Hf2fxpTkc64pYA13dsQBCmP7cvuFjZ8WeuAZAOXMcoxN9cIKbLCotvRzqZOHHv
 PmbHBrCCXGhBrMOZ5FuDur2hQ4cbHFvriTydQ1zL5vkYnNhhxi5yXrF6yjmYDi3gESOz5o5K4
 jT7JADH0cf3gvAPDFTzqxaCkzIk1bEiOSU30nRF+MEe4ACPZhwTtAye9940X0mYnWq5BS6sba
 CdxAnT/6uiIQMHhNvVCUZYg69V/7+Qxgg87SPI0ahZN/5v2ta6h5jTSIJvzspwiX9wq+O65nf
 wGMr3BxUqC3VBV8RU0DiWgRix/UbCvzlXbk6/eH+xidquRSfdCaVrx5vayGyn9IDdSSf9m5P0
 XjnUO6viYhEzBB+b3XQbPjUA7QW+lxkVhVM7g07jauj9fFqRreLVs2vVfZYKroaqWSmFf66zm
 tZKxNO4B0aTXjB8VICqRTdMwWvPaQizP90gN7iLWP8v1LJ6z7TS1HYEo0jL0749aJgJlqxuj9
 SsvaGOh0fviISWwiu/WRGFZDLCHddTpQzuYMw0YeO6pvUizUJkBrdHUvGqDcwmSSWiBllcWUe
 EvF2+O0wdKFcHOm3Y5KZ0TRUqqXwJox6u6k1zUL7wmgezl48crKGJw4iOnIOSy6EmUfbrDPo/
 LXHRqQXGoY6/lGUIvSaloL2eIuriMJpmkwxQPbUHXkp0FRxY1dta+J4MS9k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_234630_173815_E39F7195 
X-CRM114-Status: GOOD (  14.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ben Dooks <ben.dooks@codethink.co.uk>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 21.07.19 16:15, Arnd Bergmann wrote:

> That is different: the hardware attaches to a serial port and may well
> be usable, and the user space side just contains a copy of the header,
> see https://github.com/nwdigitalradio/ax25-tools/tree/master/yamdrv

I believe that such header copies in userland applications are
conceptionally wrong. Whenever something changes, both sides need
to be kept in sync.

Maybe we should talk to the hamradio folks to get this cleaned up.
IMHO, this header should go to uapi.

> It seems more useful to keep looking for drivers with a platform_data
> header file that is no longer included by any platform for candidates
> that may be obsolete.

Some folks see platform_data old legacy that should be removed, but I
don't aggree. For example w/ apu2 board driver (and corresponding
amd-fch-gpio driver) I even had to introduce a pdata struct, so the
board driver could configure the gpio driver. Certainly, I would have
preferred doing everything via DT, but that's not available on x86/acpi
targets (if anybody knows a way to inject a DT snippet just for one
driver in such a scenario, please let me know).


--mtx

-- 
Enrico Weigelt, metux IT consult
Free software and Linux embedded engineering
info@metux.net -- +49-151-27565287

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
