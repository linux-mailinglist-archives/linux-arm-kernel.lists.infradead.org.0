Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D8135093
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 22:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QLV9zC/msBd9wHXfwQOScQSNHWx3UL/aMEylGGAR5e0=; b=Vj4LCmKCjQJKoV
	yu59RACFE76OZbpFFL2ReQD+anobTouGTuC5QoRLbbI4dcxn5cZHTFXjTT3+9uMuWoCh6Ptrfy0cz
	QbN2JF9hEn8oKkiDw6lxYP6bpyTOI7HXxdhvKbbLe1avGAHQek/a2CuJRUxcicC8HmQFm7/yHcihi
	gDMUutOqRKHkp0r+cpSISJX/qfu1ALWBYcLkjk4vieH76uLPW3m4Gm+1NfoGy3oHvvmtWBALSO6dv
	SVh3kr9rFDrA3Tlp+839lAlr4URk+NUu03P6kEwwc4lma1Rfw3volwGYo+qje1VMtZ9EWWYtWygP4
	iF72xLJfmamoqvcdbCuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYFfg-00048F-5f; Tue, 04 Jun 2019 20:04:36 +0000
Received: from mail-qk1-f194.google.com ([209.85.222.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYFfZ-00047v-1f
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 20:04:30 +0000
Received: by mail-qk1-f194.google.com with SMTP id r6so3711145qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 13:04:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kRWHmlTazXX9nh3l+uCl+QUYh7joRupEOxTxYsi6yow=;
 b=OwrzZ0aGZSZmYLZUJiKm+hLtxrXHpnityD1dVVX9+QOqxG/fAuL+mA4ubWSXTThITM
 AfUSuboawsCJ+AxHQV3RsIA3D1MI3j65xtG07r0xL1W87xgmDPXi2jYr2rQDIeH7psY5
 nwPv7eIHAaZnToDQiTSUAeUnR1ZpN3rgpMi3Wd3+30oQLAkL6uvDOhF8b+5ZMFgIsRGt
 dd/2aYhmZnAdixV5me327j5TM8GK6bwhCxBcLzmkBz3pnSEENpa7LZRgGqzauTvjHO82
 rTFd6P1EVej6zx2mtpBxp5SqWBKzujjiwqd+bAi2756e2gT1CXhIYATWnOUViGXaVdM9
 fxUQ==
X-Gm-Message-State: APjAAAUOTN0q+MQv/5ZCeIDY++ZuNFqXEh7B+VQgutlxtv+JzK9ZA3jf
 ov7zlF+wWTiv1eJYLNNGjQUWpSLPWgwfYqfBUBs=
X-Google-Smtp-Source: APXvYqyofKzA14lv2A+QgH4Q7Jn1VXFGegI/NwNXTI2mi6UtDhR9SWuQ11u/xLdSZRSY6UUR1nNt+brbqwKzA9VWtmY=
X-Received: by 2002:a37:a4d3:: with SMTP id n202mr28029003qke.84.1559678666645; 
 Tue, 04 Jun 2019 13:04:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <20190531233306.GB25597@minitux>
 <d76a710d45dd7df3a28afb12fc62cf14@codeaurora.org>
 <CAK8P3a0brT0zyZGNWiS2R0RMHHFF2JG=_ixQyvjhj3Ky39o0UA@mail.gmail.com>
 <040ce9cc-7173-d10a-a82c-5186d2fcd737@linaro.org>
 <CAK8P3a2U=RzfpVaAgRP1QwPhRpZiBNsG5qdWjzwG=tCKZefYHA@mail.gmail.com>
 <b26cf34c0d3fa1a7a700cee935244d7a2a7e1388.camel@redhat.com>
In-Reply-To: <b26cf34c0d3fa1a7a700cee935244d7a2a7e1388.camel@redhat.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 4 Jun 2019 22:04:09 +0200
Message-ID: <CAK8P3a3pQpSpH4q=CL6gr_YzjYgoyD6-eyiLrvnZsqqjpcRxtQ@mail.gmail.com>
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Dan Williams <dcbw@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_130429_105525_B803ECE6 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.194 listed in list.dnswl.org]
 -0.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.194 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Eric Caruso <ejcaruso@google.com>, Networking <netdev@vger.kernel.org>,
 linux-arm-msm@vger.kernel.org, Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alex Elder <elder@linaro.org>,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 5:18 PM Dan Williams <dcbw@redhat.com> wrote:
> On Tue, 2019-06-04 at 10:13 +0200, Arnd Bergmann wrote:
> >
> > Can you describe what kind of multiplexing is actually going on?
> > I'm still unclear about what we actually use multiple logical
> > interfaces for here, and how they relate to one another.
>
> Each logical interface represents a different "connection" (PDP/EPS
> context) to the provider network with a distinct IP address and QoS.
> VLANs may be a suitable analogy but here they are L3+QoS.
>
> In realistic example the main interface (say rmnet0) would be used for
> web browsing and have best-effort QoS. A second interface (say rmnet1)
> would be used for VOIP and have certain QoS guarantees from both the
> modem and the network itself.
>
> QMAP can also aggregate frames for a given channel (connection/EPS/PDP
> context/rmnet interface/etc) to better support LTE speeds.

Thanks, that's a very helpful explanation!

Is it correct to say then that the concept of having those separate
connections would be required for any proper LTE modem implementation,
but the QMAP protocol (and based on that, the rmnet implementation)
is Qualcomm specific and shared only among several generations of
modems from that one vendor?

You mentioned the need to have a common user space interface
for configuration, and if the above is true, I agree that we should try
to achieve that, either by ensuring rmnet is generic enough to
cover other vendors (and non-QMAP clients), or by creating a
new user level interface that IPA/rmnet can be adapted to.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
