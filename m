Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA731EC344
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:53:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ikTqGzVjJ5p7oeRnEXy/Hum2Q7k61JRc9IhAvb+m3Ac=; b=BYRe3plfo4CRsb
	3fP0jY9ihp56+U0f+eL990EiFRsZvJYWWW6wRnPXgPYMMnbJIPvPuT03upmyFiOiqiTovTQbTY+d6
	0lcmCcYkQjAFPhTVrcTNLMMbe1+U/5qMprpHeRFxAyas5gal1vA5ePiFGMVAWN8ysrJwjZf8eRhP+
	BnagDxI0keWne9lIsjNIcS0Pq2SWU1URbu4OJNll6BzoewvM7Y7INT9zyJY7idCj2EB3NmkKug8tL
	mH3HXItNZty6StkE0KoAYDAu3kcyjNdgFfBrCIxf92gEbr6+8XMx+iztH2fG5EtJP+PAkgzb0z/CZ
	vwFv9ZElv9aCu7DV6VFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWRA-0003MD-2s; Fri, 01 Nov 2019 12:53:56 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWPp-0002HF-8g
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:52:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id c22so8984512wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:52:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5kDHdGaAqZVxVSO+DPwW99XZq8iYZVkob3e0AtdnlHc=;
 b=ICZ8mx+Utk3tKzJbdssh1f2AJtQ+KDk1XnZX+N4wsPjRdi5IRTCH7IcVOIIRk4dk4h
 J6Chf67SdhbX+qhKHNl1eB1HJfeCYlovuviQEwLTUXeO8Y3IZBKQilrL2Hmm+N0cUuCw
 t4VDIFa13bjoPB3G33VJdZmhRpPootgEVPG99Wx9y6Y5RhgRRtyYkI+sNyRHgrHINM7x
 Re2p2pPHaAfzt2uvFRpwEePm0oq0F14t/bjcBQhvzi3W6LksPuMU77u+lRVuGXhuXFyD
 l2ZJ6GIwhXnqndT8X7hXN2YMpVfsgFwZuVSwJyu9f4gA5Sx8px8RMQtYzXrreuRcRX8q
 85tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5kDHdGaAqZVxVSO+DPwW99XZq8iYZVkob3e0AtdnlHc=;
 b=cWplp0gcS9Ry3w+KnfZ4xOB1rmiExawxSianUBUtv2GAoNaKeKD6Kgfwl0BJDDGWlL
 DkVJv3T65bE2rZEZ5p8UhRJcU0aENb99ezMjfkz3eQC0jptcV2CMjXH1pXzc5vFTwTnr
 QzoAN8R1qYD4ltRWZGGQ/GdufpxlgEBRSX5JkCFsfDbBxFptvYsXBQBySReuIMSIgkDn
 3POcQ4HbqE9qAZ90rLdjIwe6heRrZdFE47ryN6oYh78h/EMonFkAItbphyfrhHIy73/J
 zS4f8HUG/3yh4RS7WyxxwdVd+6ZKFa8ecwViotUDLm6Jgpf9/Pfg2bI1QzxRVh9KeTxl
 C4yA==
X-Gm-Message-State: APjAAAUg8AQ89gbdpNYgJdD9MWwIHKGK+iT0B/sGPVNGUzIdbmh7fTfe
 jRZ9F0+6/zRE41BtknWHaV8=
X-Google-Smtp-Source: APXvYqyu7fVT4MGxfs1QnkZRpSmE0DSsyd+HoLtvpv2yrj8wf2G85zypZsTEptRDAJoMKjihJoqwvw==
X-Received: by 2002:a1c:60d7:: with SMTP id
 u206mr10600674wmb.101.1572612751565; 
 Fri, 01 Nov 2019 05:52:31 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id p15sm7907642wrs.94.2019.11.01.05.52.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:52:31 -0700 (PDT)
Date: Fri, 1 Nov 2019 13:52:21 +0100
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Subject: Re: [PATCH] crypto: fix memdup.cocci warnings
Message-ID: <20191101125221.GB3904@Red>
References: <alpine.DEB.2.21.1911010953590.2883@hadrien>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1911010953590.2883@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_055233_471375_EE20772A 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kbuild-all@lists.01.org, Herbert Xu <herbert@gondor.apana.org.au>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 09:55:34AM +0100, Julia Lawall wrote:
> From: kbuild test robot <lkp@intel.com>
> 
> Use kmemdup rather than duplicating its implementation
> 
> Generated by: scripts/coccinelle/api/memdup.cocci
> 
> Fixes: f08fcced6d00 ("crypto: allwinner - Add sun8i-ss cryptographic offloader")
> CC: Corentin Labbe <clabbe.montjoie@gmail.com>
> Signed-off-by: kbuild test robot <lkp@intel.com>
> Signed-off-by: Julia Lawall <julia.lawall@lip6.fr>
> ---

Corentin Labbe <clabbe.montjoie@gmail.com>

Thanks

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
