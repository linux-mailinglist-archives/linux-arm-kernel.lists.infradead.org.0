Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C63A867343
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 18:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OnqCQr2z0n5ib6jWI3CnTWQsK3ZJJZWgZbMK7hFWTa0=; b=mk64ThxxHiPqXZlSLRZ3eSWXK
	VPzzeXESQeffQXSFyFVoWoYFxStp8IBKfTC2kCf+/lqccdQFNxRK/CNDpOnAalUBlhVHcBomj7AmH
	DR7cLySy7NqyhMxeNzFizLJtwt07wAccsQYB6n8LTKRGru2DpWk9xFfnLIT9llwA+gkbGg6Rgf8dd
	/LWqKYZfInTd90Tidtnhvf3fKFo2KjN232ETh5+YgOsMO83f1U4dAJvgmzkaGe3Ah+O12gvYxUwjC
	NeOHAQ/pcJZaCAZNa4w0Vu1+WQq2yF014YDHdX3ySZyI+HIHMgyPFug0rDS6Ek8NQ6F4BHVq/1swk
	bys67W4mA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyOg-0001mn-7U; Fri, 12 Jul 2019 16:27:46 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyOR-0001lp-Px; Fri, 12 Jul 2019 16:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562948844;
 bh=Nrxdsq4Qz0JpkUNEaKvb3REo5DtrYOkqiocoF0y/Nw8=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=YGIlTbL3QWOJ/ZGD1VUgkTH0g6QZvyDu5GV2gPz04VZXuU5oXg6w0TrKSSIkejggX
 yn5reGhglGnP3DR+uyJhQdH4JOUlh7qozebmhWIoMPeic3iua7StC/wzRGtQp+UWfO
 rGUpcFvbAFHhUHZkuDU64h/J7u9dslnqt60PT0KI=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.18] ([82.19.195.159]) by mail.gmx.com (mrgmx001
 [212.227.17.184]) with ESMTPSA (Nemesis) id 0MAhWl-1hbmAi3LrP-00BvRI; Fri, 12
 Jul 2019 18:27:23 +0200
Subject: Re: Asus C101P Chromeboot fails to boot with Linux 5.2
To: Emil Renner Berthing <kernel@esmil.dk>
References: <59042b09-7651-be1d-347f-0dc4aa02a91b@gmx.co.uk>
 <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
From: Alex Dewar <alex.dewar@gmx.co.uk>
Message-ID: <862e98f3-8a89-a05e-1e85-e6f6004da32b@gmx.co.uk>
Date: Fri, 12 Jul 2019 17:27:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANBLGcyO5wAHgSVjYFB+hcp+SzaKY9d0QJm-hxqnSYbZ4Yv97g@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:VKCQbKmJn1u/4Hr5rr8Okbv4QiPFlB4+uWWdIip/BmbgmpbvHQu
 IXhflMR1Z138nShCwQEIKRXFIHzPb2fzwPMlv7CLPGwp3D24IM8ev/dE6BHV97MF2EHM6Nx
 4kA0oTryaMTtWPDuRJgC8MbGO5Lo74d2hyQdXRFwrlQpbUAPbtPimAYXeNDDyhu/gbxD9hq
 KQ48goZm2o9MfgiRHbffQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:t0mzbLbiGS4=:9sL3a9qUnFKP57KYZ+ddiq
 UbbiPOt9hGGz21cb7eGb0zVPAmlbbx++CGeHH4SRKMcdlwtF3Kqz6WVr9jkhFhfR3XRzIdd94
 iImgCr0dumgILni2v474de/WHj8R+4XNDHWeCESt/vhb7DO+J87DMMaz9cBDogsWsWqw0/1A6
 rRNMSUUEfWM8tJjYkW84WsSgMR0/zqzlCpEdwMBwmcDi1TQAY37QE/ucnvQkRF2Z4c6fQJKvP
 NX+4qm9c5atEHFSgY/G0asX5ZLxb6q8s9ptB9iD8s/9vooiZ/F9K25guDJpZ59t5PhnpVHTfB
 1lKpvZS2/ghcXotFNuODn/KTl3d+TKBlP48ho23Mn3E0hhKCm0AWlU3Vq/zuxd5rFgakuG64Z
 w9SfS4Czj/9SZYmaqa5Tv+NMa/kLhB4I5rPxXkSefA/aaUb8AnTSw41yees9AVyaE7Wwg7113
 mlGfMMfO1CI0F0nFuc+xnbWlcZXGQ+q5ZqJj5DBMviCn+pq8HEIoxLH06W4M/xqVIjchISl+Y
 PtxOZ7bCdt/4iKmiUoIhRMdoezAzs0wJSvy48Kt4VZ7TSiRURP3+sf96AOGrfXhS0Hkan7+Pd
 NCq4GyKLYFMZY6IxW/rcEnLBQofEcevsj3BKlQXEtTwZ6GMeTkSRZFUAD0H2F8phgE7IKxoqz
 i42aJy89zqR3+cvwYcr2oov/GbT0pXH9z/V/SFqjGwgob0gUDMZs62CGn9/Hegp3J/8c/Ji45
 jlBtoCabalf4yQIvuzUL3+moTBARFtHuDTAVWcn9ER9Hq9Kpi3EidNM5p+dH718kLBBY6fHMg
 IfFHM/dcW5RdPOCKlCntmExS+xyqeanWGmC7v5dm7uv9sneXrnZ556l4k1oIZSebVKkI7gwKK
 cYqNHMmC3wb9kCnEOU1EzIFKvYKOQbgY3mbiSaDHG8kfb5BBMN2qFkr7GPfyvh3cC9TtSTemO
 wAc5vG/VSThMRziZ07zo50gO0IlLgewOhcl7McWzsVr9UM9of9Vkb9RLh2YTxmUZvLJV8a/DZ
 XWQMoBVRO7I4EXlrrhIT7nG17eAZbwJUquFJYyEBY0J/cCiDh5lGBEyIKmt+ao3b0lqtinWjy
 eYvH0p38406BpkaBJg0eKdFpkrBqsMER4Lp
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_092732_177698_8895FA0D 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Emil,

I've tried booting with: audit=0 console=tty0 console=ttyS2,115200n8
earlyprintk=ttyS2,115200n8 init=/sbin/init root=PARTUUID=%U/PARTNROFF=1
rootwait rw noinitrd

Now I don't get the audit messages, but no other message is displayed
either. It just alternates between a flashing cursor and a multicoloured
square in the middle of the screen. The system isn't totally
unresponsive though. If I press the power button it still shuts down
properly.

I've just tested it again and confirmed that it does boot with the
v5.1.11 kernel.

Best,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
