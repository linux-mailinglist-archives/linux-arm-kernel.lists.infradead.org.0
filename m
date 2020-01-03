Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C5812F217
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 01:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wwarwludnHNDo52FZyScpPytNqQ3YCIvMWbZ7ZbFhaQ=; b=aNO+Za7c2e2luE
	RTDYFwmhKKX7s/5WZOyRO7cQGD62ViRp+o+1q3KBnLgR5EYtsQDG331IqXxQVP/Yr7vvFwT33TIjO
	NBuWjXEG2aOaUkV/maJ8Fi7RvzRfffdzPN/YrP8ul7J2+U9sHqWRo0rP8SFC/I2/sIAYud0PO5O8J
	cp7kGzIMrVtjGbYjcYXTg+PmmQkgG8y68qofyzthti3+n6Ec9IaHmfznx7O5fcfYZye4piVtlam4y
	d9xNaZ87qDw+WmH2+RmhqKQ9hnsRJfNTRusX4tGh9Rm9xjpQ/ypSEjdvDzEsyi8vYFyXzgsWeb8To
	s0m+xUNs6agycT2fanhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inAhO-0007TV-Af; Fri, 03 Jan 2020 00:20:18 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inAhI-0007Sz-CX; Fri, 03 Jan 2020 00:20:13 +0000
Received: by mail-ed1-x542.google.com with SMTP id i16so40457254edr.5;
 Thu, 02 Jan 2020 16:20:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FV5X7fA+rrUeDnXZ5UiKMokLx1xAJtoG3k2CK746+60=;
 b=Be1Z4lKrrI8RtYjq/BzQfrsrCUA2UJPv3VAYzJae/rKQQP4Mi+149d9Yfc4ozDEFnb
 Zk8lQf019qLG1AXIqKFCL0h84IaKBpxEFDMdoLOB+KtZC8hcNg27wvwd6H4boJJUuVwJ
 p06otaRRzArTVUjHQB80gpgk9NqfS8sn9WrJAqlGRZfRnzhgjHXsl7WH3TgmsjC/loS1
 WRQE2gex7s4Z0hTVMOgYJMHsXVl8HfZzqMX1Q2JPYaM7L2pP6Y2M6SBICtxchYmXn7v0
 NkvIFR+5N8zDAC+NT1XtLku0AXonKX+rgIRYheh7gNXyQhAamyBQvq1W0yyYgo68zdd6
 nSwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FV5X7fA+rrUeDnXZ5UiKMokLx1xAJtoG3k2CK746+60=;
 b=AdnlzNj2my0IBh4I5WIHDjJ/37vpAAD/+DIPeOSsZLtL443PzSJeazZ6opjMiFqd1D
 YaOFJNCCQ/2CgrN7Fyp+pgjwSv/1qNvke5Qe2lTUdL3rsoeZ0iTfOWmhUgvHQuTag39g
 VC7pQvmvz3GedCCsqiRaNFVWRkUvIqaPP3+kZ3PzBJ1ALDhRrKTQaPwWotWinNka3qxO
 28uChBPMUU1JS8UgRTBzUAAJkbmyQpvzsiWOhFJNxQUp667NZEpjnxKnO8+IB/CaR7x0
 s+yufcicaMe7jw0Rhx5ICfZ3NFn9PZLgqiAvc3idHm+MEZIrPldUns87CHNQN3boR7Xu
 uywA==
X-Gm-Message-State: APjAAAWHFyK2KnLUm7PPTHXkanDevWutxsgxVU6L59rfCCytzrFr2+tq
 D/57mIsXHzfvdyEfdTgFf2W/jBIPXSmsoQzcdOg=
X-Google-Smtp-Source: APXvYqyneY6vp7MndZY2IHVlAnYW2Ny5AcY4pl2xKrupts1lB1ozOUhHi1uWOz20Rt6s9+dkTrmWhTv4viThJydhKuA=
X-Received: by 2002:aa7:d34d:: with SMTP id m13mr89428224edr.140.1578010809821; 
 Thu, 02 Jan 2020 16:20:09 -0800 (PST)
MIME-Version: 1.0
References: <20200102233657.12933-1-f.fainelli@gmail.com>
In-Reply-To: <20200102233657.12933-1-f.fainelli@gmail.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Fri, 3 Jan 2020 02:19:58 +0200
Message-ID: <CA+h21hrLO2Nfryu74Joj-T3-ithgoSFOQZsw4Z5QWOnhttvGiA@mail.gmail.com>
Subject: Re: [PATCH net-next] net: dsa: Remove indirect function call for flow
 dissection
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_162012_454209_1AAE5864 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Song Liu <songliubraving@fb.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 Alexander Lobakin <alobakin@dlink.ru>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Dumazet <edumazet@google.com>,
 Stanislav Fomichev <sdf@google.com>, Matteo Croce <mcroce@redhat.com>,
 Petar Penkov <ppenkov@google.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Woojung Huh <woojung.huh@microchip.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Claudiu Manoil <claudiu.manoil@nxp.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, netdev <netdev@vger.kernel.org>,
 Paul Blakey <paulb@mellanox.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Florian,

On Fri, 3 Jan 2020 at 01:39, Florian Fainelli <f.fainelli@gmail.com> wrote:
>
> We only need "static" information to be given for DSA flow dissection,
> so replace the expensive call to .flow_dissect() with an integer giving
> us the offset into the packet array of bytes that we must de-reference

packet array? packed array?

> to obtain the protocol number. The overhead was alreayd available from

already

> the dsa_device_ops structure so use that directly.
>
> The presence of a flow_dissect callback used to indicate that the DSA
> tagger supported returning that information,we now encode this with a
> proto_off value of DSA_PROTO_OFF_UNPSEC if the tagger does not support

UNSPEC

> providing that information yet.
>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---

Unfortunately I don't really understand the DSA implementations of flow_dissect.
Is proto_off supposed to mean "the __be16 pointer difference A - B
between A. the position of the real EtherType and B. the current
skb->data (aka ETH_HLEN bytes into the frame, aka 2 bytes after the
normal EtherType was supposed to be)"?
Otherwise said, the offset in bytes between the real EtherType
position and skb->data is 2 * (proto_off + 1).
Furthermore, the offset in bytes is exactly equal to the tagger
overhead in bytes, unless it's a tag that doesn't push the EtherType
to the right, such as the trailer tag.

If the above is indeed correct, can you just skip DSA_PROTO_OFF_UNSPEC
and add proper proto_off values "in blind" for all taggers? I think
it's rather safe to assume that they all push the EtherType to the
right with the exception of the trailer tag, which will have an offset
of -1 in terms of __be16 pointers, by the way (so your -1 encoding of
DSA_PROTO_OFF_UNSPEC won't work for it anyway).

Also, documenting the unit of measurement for proto_off would really
go a long way.

What is a good test that the flow_dissector does what it's supposed to
do with DSA?

Regards,
-Vladimir

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
