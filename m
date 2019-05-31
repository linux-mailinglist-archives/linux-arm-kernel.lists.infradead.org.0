Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C9531825
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 01:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ofme+f+pQUd6xGdEHLtGH+fhy1eCbA2rI1wKqbFG13E=; b=HB1DAuCZkcqV/j
	hUV3cmSDYe/SEDbtjS8mRyL1oPKIsiv8og6dua9wZXhmzFa18g24ThRULSeqG1nVZPjw9tfHziWGy
	5usTt/fVavkhloo7Hf/ZKLCiKUgNGI0iO9b1LO6oqLe54CbO9QBe2Iyrkz0RL+lbmI8V/2kYPcZpz
	4nYEgycZ1MNek9OUpxm4By+QHM/6ti3nmM1c+7X2gOosmKwxgFwKVU7qg46No/MFhZHIJBhqHCtYi
	gHYc8Nf4g+MXHez4nN6tNzOJMLAAl0L95RH2Y+32Tir/2r4m6XPE1KyfWMh62SC871NKXynnvXrg7
	x4rboMTNXRmNK09B957g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWr1S-0008Pb-Uy; Fri, 31 May 2019 23:33:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWr1J-0008Or-V3
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 23:33:12 +0000
Received: by mail-pf1-x443.google.com with SMTP id u22so7091139pfm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 16:33:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=zzddG9Gjm8AXO9IHzYUM1VDR0CHwahQe8D71s9hFu/c=;
 b=sUFNLE70qFuM1j32iqPxE2N82dVJJzFJaig1Wc2IOUGvkXLZBJWeWXEnUpoER7ZDH5
 lmPoYejl4nkgIgnY4RVJpWC4DbOXHt4cuJn3rNDITsEMmuHlooOoGM8q0p6UsN22WV3r
 nsI1V8f9K77o0rjLcWUEgQj2DtJF5B2CAgykzgCf4yXUgSsJNINJozSXCUelfZYikR0t
 vY2DgytSi3PGwSkp748aqkLh23FuFSagcBfJmDMaSw1brMGuZAZXdz+2y75ZfA+d4Aqj
 UPpnZFpNufpYERlc5isr4RxlVC7tXskMUL9Rc1IH1UTus0aA98hA1TKSQvlLnNB7znCx
 3pIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=zzddG9Gjm8AXO9IHzYUM1VDR0CHwahQe8D71s9hFu/c=;
 b=DyTET2q0x64bSgNNNJsUhsoGsYX0aXXAz4Y5toF7GW7RC2mNrRI3LCCnHqBeZrF04x
 wh+bJ9y40inwiS6+X4l9ByojATCydT62u0f5NXDTZMMmZ1txhIP32Eya5Uoh5fnuBLdt
 REY2FNBK6VJEM2WDu9fpdt67Ay8SSISIBu/GLsnxXXkdZwf8CmtTHxQe/Fx7njwFLXiS
 QwYHs6xq6M3MYnYgfaY1/HIotlb8dXFYNo8jSD1JDzShfQ17Myv0LOVFyVUR3LQW7/Kc
 NjpaYOt8zdv++8GdW+2oNMUJTIItBJCLwvdksUoC53PP3WG1hwpzGQ0NS8QlYSzPdaTc
 SpNA==
X-Gm-Message-State: APjAAAV2MFRhyhc9ykCLnttWmMgD1dRzSZRYtLZ5erAhWyKgmYce/DCV
 +tOkOzXuzj8TpW8Yr82Bk1LCFg==
X-Google-Smtp-Source: APXvYqyJ7gQmtzmeiKPbNeIHflsw1vNpFtYMs7bzVo3F+1S7RJ+MFhz+r8ETLxFyxFKwyQDGRT1VaQ==
X-Received: by 2002:aa7:8b12:: with SMTP id f18mr13286126pfd.178.1559345589344; 
 Fri, 31 May 2019 16:33:09 -0700 (PDT)
Received: from minitux (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id c17sm7733229pfo.114.2019.05.31.16.33.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 31 May 2019 16:33:08 -0700 (PDT)
Date: Fri, 31 May 2019 16:33:06 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Alex Elder <elder@linaro.org>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
Message-ID: <20190531233306.GB25597@minitux>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_163310_769319_DBE22342 
X-CRM114-Status: GOOD (  27.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Dan Williams <dcbw@redhat.com>, Networking <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 abhishek.esse@gmail.com, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 31 May 13:47 PDT 2019, Alex Elder wrote:

> On 5/31/19 2:19 PM, Arnd Bergmann wrote:
> > On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org> wrote:
> >> On 5/31/19 9:58 AM, Dan Williams wrote:
> >>> On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
> >>>
> >>> My question from the Nov 2018 IPA rmnet driver still stands; how does
> >>> this relate to net/ethernet/qualcomm/rmnet/ if at all? And if this is
> >>> really just a netdev talking to the IPA itself and unrelated to
> >>> net/ethernet/qualcomm/rmnet, let's call it "ipa%d" and stop cargo-
> >>> culting rmnet around just because it happens to be a net driver for a
> >>> QC SoC.
> >>
> >> First, the relationship between the IPA driver and the rmnet driver
> >> is that the IPA driver is assumed to sit between the rmnet driver
> >> and the hardware.
> > 
> > Does this mean that IPA can only be used to back rmnet, and rmnet
> > can only be used on top of IPA, or can or both of them be combined
> > with another driver to talk to instead?
> 
> No it does not mean that.
> 
> As I understand it, one reason for the rmnet layer was to abstract
> the back end, which would allow using a modem, or using something
> else (a LAN?), without exposing certain details of the hardware.
> (Perhaps to support multiplexing, etc. without duplicating that
> logic in two "back-end" drivers?)
> 
> To be perfectly honest, at first I thought having IPA use rmnet
> was a cargo cult thing like Dan suggested, because I didn't see
> the benefit.  I now see why one would use that pass-through layer
> to handle the QMAP features.
> 
> But back to your question.  The other thing is that I see no
> reason the IPA couldn't present a "normal" (non QMAP) interface
> for a modem.  It's something I'd really like to be able to do,
> but I can't do it without having the modem firmware change its
> configuration for these endpoints.  My access to the people who
> implement the modem firmware has been very limited (something
> I hope to improve), and unless and until I can get corresponding
> changes on the modem side to implement connections that don't
> use QMAP, I can't implement such a thing.
> 

But any such changes would either be years into the future or for
specific devices and as such not applicable to any/most of devices on
the market now or in the coming years.


But as Arnd points out, if the software split between IPA and rmnet is
suboptimal your are encouraged to fix that.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
