Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1280010500F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 11:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rU/41x3K1ZGt06FAPPgizZQ1DEo6X4pU3VGYPedQ8Oo=; b=an1xN6veoER0yK
	8amiWoS+8nbyip4tmpzkgwbPxzIxZiXCchV5GN2PU7PikhDPtupfyOhOTpAc/HXQkYjNhaP5uCb11
	XvtIDIdqgqql2GB8Si6YaKg74nghVXe1FKj2ewkT9u0sj066TBO07jOFg4xdz76+sTsXuUTUdU7kv
	PeEXRcoWbdlb/lZ6sNq6pFiluouSlNMtYMjiHwyGD4ujbK/I8OkkufHvpFqHMWPVmiJOAluq5cYtN
	wjXCZm49Ntp7hYphuuwFVGPH68Dr58jUCV4U3FmfIEdor7F2G8fQPiXzY+FFaeRoNwVdER5k0jRl+
	WSo3GkEUfe4PY8IeE5nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXjOU-0001N0-Fd; Thu, 21 Nov 2019 10:08:58 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXjOL-0001Mc-RQ
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 10:08:51 +0000
Received: by mail-wm1-x344.google.com with SMTP id x26so2735684wmk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 02:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=R4hjhKPyQPWEsWK0HmI2zX8e76pSPH6drX+KAe0V84E=;
 b=prbs1dP81sRgtZ7wMCz80nqk+aX4U4XK85NdUe3WyuZaaGzWb6qcXqMherEtvNOdfQ
 0mFggBF0xyVTaVOrAJi9kBoL3Wz2rHwKRiBtK9dd0Cix8BWDWQTxqphMaHDloq0dR2uW
 cfaEJuWSZRXBi3t8JQ1a9RiTet71dpIlmxSrix9fiPhjr6ViM4JByd+qlWkc1Lw9s6Dn
 MNPXnRbI/U7zcw5K40Cx1EmUwjrSZKUjVf6KH4pEa+ucjPeoQioSZwwvYerH2K54/sZ/
 SB33awdggXTa/GgebY19XswcrwnmF8mLAP9YsQ3US8r9L3ZqbmEsEPGe693crpzqwMIp
 imEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=R4hjhKPyQPWEsWK0HmI2zX8e76pSPH6drX+KAe0V84E=;
 b=TBAW/u0ArvcCylFONMII0W/sRRu1/4dhlCalbXVVhMsXaqjjxwfB68406lkzbXsnaO
 qrl3lg57nQ3485QkW+kdAWF1jbCENe0Irz/LYwVlGVBqg7HvBhRR4C3vy3MjEOosuVxX
 SltRlqkY5jgQ+Sfc0TGRS6ggNPU5egNaEnlVvlPTsKBtAUg7k12f0kP6+0wYxu1kDNrx
 ef5Pgw2uNmPWReBWY01IFPlBNNhv/8FfW4O643knVG2u5PqT6vdhK47STo4gw9Qpf+rM
 BoS2TVMUOvho0VOKYP5uA2+5onnzZRCDgTOzIfEs+qTPucPmiGJF0uV8BFAcgtNdIKC2
 H4eg==
X-Gm-Message-State: APjAAAV6HJoDKZdTE7SbGKRmNKnEb36FlFzPMwNgQ7ETd63Wi8duTaqU
 NLC4y44o46jGMlPxLOGETUU=
X-Google-Smtp-Source: APXvYqwK4BLAl1njfaoGUIR/wJpfPYIvklCz7Cwdpuk+lsOrpbr4tVRvmsBX1oWogL8be666keQqvw==
X-Received: by 2002:a1c:e08a:: with SMTP id x132mr8950374wmg.146.1574330927887; 
 Thu, 21 Nov 2019 02:08:47 -0800 (PST)
Received: from ltop.local ([2a02:a03f:40e1:9900:4082:8c56:ea03:cdcd])
 by smtp.gmail.com with ESMTPSA id y2sm2568116wmy.2.2019.11.21.02.08.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 02:08:47 -0800 (PST)
Date: Thu, 21 Nov 2019 11:08:23 +0100
From: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
To: Joel Stanley <joel@jms.id.au>
Subject: Re: [PATCH] aspeed: fix snoop_file_poll()'s return type
Message-ID: <20191121100823.2twowr42nsyykvgg@ltop.local>
References: <20191120000647.30551-1-luc.vanoostenryck@gmail.com>
 <787e54c2-2fe3-4afc-a69b-94771726194b@www.fastmail.com>
 <CACPK8XfO=F-BtCuDqyQODJv=6joYmyFiQ5eOYC5YuDJhcLSJtw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPK8XfO=F-BtCuDqyQODJv=6joYmyFiQ5eOYC5YuDJhcLSJtw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_020849_910476_B2AC4DC5 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luc.vanoostenryck[at]gmail.com)
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
Cc: Robert Lippert <rlippert@google.com>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>, Andrew Jeffery <andrew@aj.id.au>,
 Patrick Venture <venture@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 02:52:39AM +0000, Joel Stanley wrote:
> On Wed, 20 Nov 2019 at 05:42, Andrew Jeffery <andrew@aj.id.au> wrote:
> >
> > Looks fine to me as POLLIN and EPOLLIN evaluate to the same value despite
> > the type difference.
> 
> I assume Luc was using sparse to check:
> 
> CHECK   ../drivers/soc/aspeed/aspeed-lpc-snoop.c
> ../drivers/soc/aspeed/aspeed-lpc-snoop.c:112:19: warning: incorrect
> type in initializer (different base types)
> ../drivers/soc/aspeed/aspeed-lpc-snoop.c:112:19:    expected
> restricted __poll_t ( *poll )( ... )
> ../drivers/soc/aspeed/aspeed-lpc-snoop.c:112:19:    got unsigned int (
> * )( ... )
> 
> If you fix the return type:
> 
>   CHECK   ../drivers/soc/aspeed/aspeed-lpc-snoop.c
> ../drivers/soc/aspeed/aspeed-lpc-snoop.c:106:45: warning: incorrect
> type in return expression (different base types)
> ../drivers/soc/aspeed/aspeed-lpc-snoop.c:106:45:    expected restricted __poll_t
> ../drivers/soc/aspeed/aspeed-lpc-snoop.c:106:45:    got int

Yes, but with the change s/POLLIN/EPOLLIN/ this last warning
is not issued.
 
Cheers,
-- Luc

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
