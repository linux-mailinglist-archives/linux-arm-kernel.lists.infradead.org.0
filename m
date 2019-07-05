Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 340D46093F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 17:25:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VeVepGtn/4cWnd91TXuB6Rq8fDCBza4AQOgWM7v3Vc=; b=u3hJqR/Q6CB+Zb
	YXnsRTiKhKM24Sez2OCvFaMDzfmX1wUDKcRREjDGG9/+UNOqLvjK0DHQqSgFtsN+Q5gSulqhY/T6Q
	C9SdEuy8ik2tiGNSRAWnftMzNictxcn4KDtVCZUf059DEKk/ojmCbH56vZRC4kjs3x6r95vN05Yql
	YTdcv4GZ849pe4zXpx9vjHKdnAVxHDozcrG3FrF4bFYIJjJEfoobW6cFlG/qCgiJPBl+Nr2r4E/Sb
	goJJ/lVcHSK1WchipAHIgKcqKcum+b01OChQIYnuRv2+ATqgwJpxoBjCRnCzJcEZCEWZ0nzc4zOXF
	Pj8H3dIAsj9qa0bDvfXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjQ5J-00062t-Tp; Fri, 05 Jul 2019 15:25:13 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjQ55-0005xn-DO
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 15:25:01 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so9955152wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 08:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=776FeSmsIvO9BAuOMfeYFd0GoNy4MOugdcwM/WuTqsg=;
 b=PBgHa7BQApvEk3m/50z6wziaw2Yv01CO3uBItHINnz4ARhdSYZX/h/XULODQ7roknM
 NqXltRZuqAO6z2id1WpdesjpwtCY04gypErUOUmV5gKFajMA67bCIZ3vA1AB5OqhuK3N
 HgCHq9gQwesyRZ3Ov/OjAyMct5QUJeHySzX6dhh+f/WPco6uM/3JWEehGRyry/l/1TLL
 wqS2IauQSempUSqAoOw4K9yN+wepHNjVmxhAka9uBfUfOlpSSoqYEFb7Z1CASVzNAc8h
 XPIdkNm2jMJplehxOjzNqY4i4WKqYPR6DDfU3Aj1paFwNKVSAGg8xVdf6eEw3uKDSMOs
 CjbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=776FeSmsIvO9BAuOMfeYFd0GoNy4MOugdcwM/WuTqsg=;
 b=S6jw1+5tHcqve3TooaoEyH6Fikk5LWNVS5IA3XZ3rqnAj86gn1oe6ygi82ADWoZ7GC
 wL6T3I14nTk+mTrFzHtsftcjbEd3qJEfmlvYMLE1v9ax1Pnozs/8hA6Wcji1ZTzDuqOx
 amhrJJbPnGwp8oWtSqPssOm/T2A2czPZzkXw4WiH9rNhi/m6RKcOy1dqKhCZTgR27CPW
 Fvg+8LqE0Qi6cY1ubZudBgL4bHRsk9nqkgIArAaEOoZqkaK/Wuv0xKHhBdQkvYARtw5O
 n2YDbBMkN28s3vM6vGlGQBgVbFCUgvmZ1v0F9G7ENnResEa15OE9IWTaOtlkdreKym2L
 +IFw==
X-Gm-Message-State: APjAAAUUpJvO81+BHBMXAMU2oq0fYWb74e69D54t90T+UbVcTb9r/woF
 SBNIOIQFrEasB0btbrFIZgNLXQ==
X-Google-Smtp-Source: APXvYqwIn+CAMTXhiaR2OhdbdPqYr3i7rcxaiDbB1iTdnKqBy7Yo87Yv81S7nEiWLwHuACvpF1sKxA==
X-Received: by 2002:a7b:c84c:: with SMTP id c12mr3851618wml.70.1562340297200; 
 Fri, 05 Jul 2019 08:24:57 -0700 (PDT)
Received: from apalos (athedsl-428434.home.otenet.gr. [79.131.225.144])
 by smtp.gmail.com with ESMTPSA id c30sm789893wrb.15.2019.07.05.08.24.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 08:24:56 -0700 (PDT)
Date: Fri, 5 Jul 2019 18:24:53 +0300
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next v3 3/3] net: stmmac: Introducing support for
 Page Pool
Message-ID: <20190705152453.GA24683@apalos>
References: <cover.1562311299.git.joabreu@synopsys.com>
 <384dab52828c4b65596ef4202562a574eed93b91.1562311299.git.joabreu@synopsys.com>
 <20190705132905.GA15433@apalos>
 <BN8PR12MB32666359FABD7D7E55FE4761D3F50@BN8PR12MB3266.namprd12.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BN8PR12MB32666359FABD7D7E55FE4761D3F50@BN8PR12MB3266.namprd12.prod.outlook.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_082500_007350_D0E2C44B 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jose, 

On Fri, Jul 05, 2019 at 03:21:16PM +0000, Jose Abreu wrote:
> From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
> 
> > I think this look ok for now. One request though, on page_pool_free 
> 
> Thanks for the review!
> 
> > A patch currently under review will slightly change that [1] and [2]
> > Can you defer this a bit till that one gets merged?
> > The only thing you'll have to do is respin this and replace page_pool_free()
> > with page_pool_destroy()
> 
> As we are in end of release cycle net-next may close soon so maybe this 
> can be merged and I can send a follow-up patch later if that's okay by 
> you and David ?
Well ideally we'd like to get the change in before the merge window ourselves,
since we dont want to remove->re-add the same function in stable kernels. If
that doesn't go in i am fine fixing it in the next merge window i guess, since
it offers substantial speedups


Thanks
/Ilias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
