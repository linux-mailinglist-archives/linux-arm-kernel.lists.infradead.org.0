Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2477412D272
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCST6YOh+RfD0/l99CmZut4LU1Uh1WprQb+RK369WvM=; b=mUOnV5gt23wxAs
	n2J75IT+F5So8rAaY8fUdknavhhiNGE5GZkGRGX/qxZ6SjJHkZapH48Ihz3rmu7rqhs8Pleoxy4VT
	XBHIdfzSPQ+ptGp4yR8z2BOrgfwyYveNmWPMGkk6QtjvlCCdP+QkRO05aEMtins+Q1P/7qlL/pHfv
	C9p4avX1GFGv1PgUZq2fhcVfMWNuuIVsRucmyPnv3pKpF5IIWsUAaUWseqEAN63+/IU9VGr0Nt4PU
	iRYxrnmFN46z6h7g6EhusxcpJEzsCT0FUVB7DFpPcQdQGDac3X53Dd1hnzjk9xbCCvnIsqrIH/fFb
	uM2AhPLVCVu9adozPgZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyhb-0005TR-9B; Mon, 30 Dec 2019 17:19:35 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilyhQ-0005T1-DR; Mon, 30 Dec 2019 17:19:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JZ9rQfX2tOmDDl9S4tJiNghTw2MpHUqrZGdgml1GwI4=; b=bPkQ4RY29qFPhW3hVPQ7pTfeeZ
 e/mb8oNjSJweJZV+Ub1ilf2+dVnWwYXPL0qOEHlwXBq9fc1Hk1AlUL9qKYvt1JVSadUo4KC9Vapje
 fgFfcuX/D6X8IPwBuA2QrigzOtSGgOMeshSRbgWOc3FT/4gg4IctjdmG8Hpg7Ge4nq7I=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1ilyh1-00049n-56; Mon, 30 Dec 2019 18:18:59 +0100
Date: Mon, 30 Dec 2019 18:18:59 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander Lobakin <alobakin@dlink.ru>
Subject: Re: [PATCH RFC net-next 04/19] net: dsa: tag_ar9331: split out
 common tag accessors
Message-ID: <20191230171859.GD13569@lunn.ch>
References: <20191230143028.27313-1-alobakin@dlink.ru>
 <20191230143028.27313-5-alobakin@dlink.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191230143028.27313-5-alobakin@dlink.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_091924_454544_4BF7261F 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Song Liu <songliubraving@fb.com>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Yoshiki Komachi <komachi.yoshiki@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Stanislav Fomichev <sdf@google.com>,
 Matteo Croce <mcroce@redhat.com>, Edward Cree <ecree@solarflare.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Jakub Sitnicki <jakub@cloudflare.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Paolo Abeni <pabeni@redhat.com>,
 Vivien Didelot <vivien.didelot@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Jiri Pirko <jiri@mellanox.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
 Paul Blakey <paulb@mellanox.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 "David S. Miller" <davem@davemloft.net>, Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 05:30:12PM +0300, Alexander Lobakin wrote:
> They will be reused in upcoming GRO callbacks.
> (Almost) no functional changes except less informative error string.
> 
> Signed-off-by: Alexander Lobakin <alobakin@dlink.ru>
> ---
>  net/dsa/tag_ar9331.c | 46 +++++++++++++++++++++++++++-----------------
>  1 file changed, 28 insertions(+), 18 deletions(-)
> 
> diff --git a/net/dsa/tag_ar9331.c b/net/dsa/tag_ar9331.c
> index 399ca21ec03b..c22c1b515e02 100644
> --- a/net/dsa/tag_ar9331.c
> +++ b/net/dsa/tag_ar9331.c
> @@ -24,6 +24,25 @@
>  #define AR9331_HDR_RESERVED_MASK	GENMASK(5, 4)
>  #define AR9331_HDR_PORT_NUM_MASK	GENMASK(3, 0)
>  
> +static inline bool ar9331_tag_sanity_check(const u8 *data)

Hi Alexander

Please don't use inline in C files. Leave it to the compiler to
decide.

	Thanks
		Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
