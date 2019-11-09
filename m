Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E074F6002
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 16:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jktq152vaxZ8NpChBgxa9XBuLS1fVy0XHzrVqL3zzss=; b=QQAph+b1qYvMrd
	RSc0UonZUdsIH4NWmSVwOpltcwVD1uqzfgH1FqzHsnVWvZN7weJJaeQy2+iOUOF95G5Nn6863FH7n
	UzA0kSbpkI/Am0GPsybJbZApypxA9qCAnP8FGJUDSRJtgXneFeyuoRB3QfqqRK+Acd7daNFCCde3K
	UEAt8i229EDRQrgcL0Um34qF26RyRY1DjRzk+i1QQAZFIMH9ojPXu3qrQLGSLYwW97hviIt8roIn9
	il/e/2gj5RKKZ1gSSiIXnJje6YumMECSp7USwgZivA1LGJYiixjGp8XOf8dLp6TXFlnib9nlbpOfI
	QWuwe4SKV3JdXFK24/+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTSYu-00009P-27; Sat, 09 Nov 2019 15:22:04 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTSYl-000092-Dx
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 15:21:56 +0000
Received: by mail-ed1-x544.google.com with SMTP id a24so4779879edt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 09 Nov 2019 07:21:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:in-reply-to:references:from:date:message-id:subject:to
 :cc; bh=7B3KT7m27I86KEF7GR0Y9+xEe3Sei4avLWRZmXEU+Jk=;
 b=sEGkHO5Nw1u6YcsssOPb+qWLT0+J4O2g+quMEbopIoR6AUc5cls51K6fTJeGB4Suoq
 o1vH2h12opauX6KqHDFayhjEdKbrE2K9fckiFR3/hgHJaLsorO3YQWMo+8s5e6vSoWq6
 oOEiBc2ewlQZpvHryuICklYX/lWxwkH6ZsmdYNNZhKuje91eIzG2RyZsAyOpjjQXO1Yu
 MKUgHshy0nAs+3KHhQEZG7V4S608gU5RtcBjbDzz+TJuoho8xN/PMw96ShwFV3ixY082
 SegwMBa1VZYHYPa9eYkXap7eVhgyyGzbLU+8EvO+NCkrvvf7XDURyzFhiZMtNt71w9YJ
 J9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:in-reply-to:references:from:date
 :message-id:subject:to:cc;
 bh=7B3KT7m27I86KEF7GR0Y9+xEe3Sei4avLWRZmXEU+Jk=;
 b=XIaz1e6xHJjxIn7VFx6hAW7ZqVKHDD/qy8AKcRWB0DGCRwm9sSa6X5EIMQg2CtT2Mr
 F7lu2wrVjPVsF8nYyONpbi9nPa8htIg15/8FOnDXJyZBCC7k/kq080AXJU+6Ck3ecBQ5
 5hE3d/fnPkShgWRyOw33D5bdXg4AsfxsWXXJZhhDPIDpxGxvUClhubeLeH8hUzjPgLjT
 kYVm0LeZJXiX3Y1kqArrirtcDJkVu43DyhDa3o16sV0b2VmQPsD9jEmHiJdU3HFq3cr3
 ncod7pZV9jyCgrdBM7bOaivYZyHTV1MIuPScWVzsOnNrUqvifW+pnYPIIJUzPx6J8XkG
 HODg==
X-Gm-Message-State: APjAAAXp6ojNIc35u44s8FbRU+DVyl9Hkmw4c/GwyhmnUmjLFZApRnH/
 kN0qfus8lsIjZRdk4cGYh6pr13wm0Zx6mB/I3Cg=
X-Google-Smtp-Source: APXvYqw2xy+TORlK9D3NsUd6J7Zs/SmAvifrskcUq5ND66YP9APND+9oBSZCimLdnMzy1MQF2p48oh0a34pC8u3dbWo=
X-Received: by 2002:a50:b63b:: with SMTP id b56mr16737146ede.165.1573312912091; 
 Sat, 09 Nov 2019 07:21:52 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a17:906:12cf:0:0:0:0 with HTTP; Sat, 9 Nov 2019 07:21:51
 -0800 (PST)
In-Reply-To: <20191109150953.GJ22978@lunn.ch>
References: <20191109105642.30700-1-olteanv@gmail.com>
 <20191109150953.GJ22978@lunn.ch>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Sat, 9 Nov 2019 17:21:51 +0200
Message-ID: <CA+h21hoqkE2D03BHrFeU+STbK8pStRRFu+x7+9j2nwFf+EHJNg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_072155_497874_62926328 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09/11/2019, Andrew Lunn <andrew@lunn.ch> wrote:
> On Sat, Nov 09, 2019 at 12:56:42PM +0200, Vladimir Oltean wrote:
>> On the LS1021A-TSN board, the 2 Atheros AR8031 PHYs for eth0 and eth1
>> have interrupt lines connected to the shared IRQ2_B LS1021A pin.
>>
>> The interrupts are active low, but the GICv2 controller does not support
>> active-low and falling-edge interrupts, so the only mode it can be
>> configured in is rising-edge.
>
> Hi Vladimir
>
> So how does this work? The rising edge would occur after the interrupt
> handler has completed? What triggers the interrupt handler?
>
> 	Andrew
>

Hi Andrew,

I hope I am not terribly confused about this. I thought I am telling
the interrupt controller to raise an IRQ as a result of the
low-to-high transition of the electrical signal. Experimentation sure
seems to agree with me. So the IRQ is generated immediately _after_
the PHY has left the line in open drain and it got pulled up to Vdd.

Thanks,
-Vladimir

[Sorry for the repost, for some reason Gmail decided to send this
email as html earlier]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
