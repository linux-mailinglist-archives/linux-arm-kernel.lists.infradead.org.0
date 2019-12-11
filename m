Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B4911BFCD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 23:33:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Subject:From:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXi7bYqpj4t5EflB47CW8mOZV06upaw8XFwAV6tboes=; b=ax0rSX41jVwgX7
	kT2nlBzvk0jF8YZFh7ZnMnb+5ZkIiJ4bT0rCFyc7+k3bzn9yuJclfWvR53Vv97AA6wp1xoc5wZYny
	1ErNanCuBke6++V8dZCX6gqmYayx3GXZYgoOxniLmDMY2sOn9L4q3VTHCkq8SF6XAW7De0bJtJM0Y
	GTbpnNdq7rkdIBgasgjDt/PzDEUlIhDniJKtzV8hbBN1sHAL3YRDpqKPNHSajMZgvvA+kVxtn7YdN
	Va7xwcY5Zzy98JfxKI5zlKZ14h9QXWfSSG+Q0Jjl9UtOC6daHet8FxugSGLMbvPiymOcv8ohIdrSK
	aT01FokX1XlmFo2XfZEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifAYG-0002Ve-Mw; Wed, 11 Dec 2019 22:33:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifAY7-0002Uv-7c
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 22:33:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id 2so22407pfx.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=message-id:mime-version:content-transfer-encoding:in-reply-to
 :references:from:cc:subject:to:user-agent:date;
 bh=GLfOWzQemc1h78t5DYJGe0qF4KG3PrqnQX9OD2KMkVg=;
 b=EGqh+SNe7tJoJVYFDX9MbYa6fdPkZdf0Iqkt6HqFkw6pk2B69j+S+dBuZduDI2Htu/
 53Z55YSB8pygPZfnCm6Rw8bOJMZMVxGq9DOuytHQQJTS5RLX6nYY4Y3p9fVrb6/3TvJz
 3WkvJ74EWUgoWVwJ84+5hC+YoHp0+i5fpnHQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:mime-version
 :content-transfer-encoding:in-reply-to:references:from:cc:subject:to
 :user-agent:date;
 bh=GLfOWzQemc1h78t5DYJGe0qF4KG3PrqnQX9OD2KMkVg=;
 b=KZqOy+rWNInRTdk/GXvhyPi5b3VCTmdmzQfy98TWYXnhdQJIQdBNb6AXBNIwA8O7S0
 wSlF8Lbyckosl0ayheDseGc8vv3nUqQMyvPaeWasQrX45sKTAYTCH2PYZltYBsm3Viv+
 ShMItS6w5ozEHesXVsPGQ003H2/0iHk9nJllpOOGNgLH1e77gzZrIudMDngTvxlrLfZE
 3/fslZ47o3bFm28npGJnjV824jgDgc5sVdBNLkhNANZm592KWvYiLPVVMN8i1vsPzdKg
 jFEEAKyU8j4sXmZy9CgRzCLg/uvMjcjU7i+hwA2I8VjKa2e/ojXgMvgTSjXNspJYEQSZ
 r2rw==
X-Gm-Message-State: APjAAAXz0NliibS4a9XqAEcCjU1lrMij0lDKJOo7TM6cAH2chUyS2um1
 l3efg42/1R73gu7CSnObfV9E1A==
X-Google-Smtp-Source: APXvYqxOh2exbuJZ713PVPhR7LotYIkz2slbPtyOuv4ICDUsQ7Oc7Uw9ampebPmIPXRLwFcw28pqHg==
X-Received: by 2002:a63:1f21:: with SMTP id f33mr6886509pgf.91.1576103615577; 
 Wed, 11 Dec 2019 14:33:35 -0800 (PST)
Received: from chromium.org ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id e16sm4065103pgk.77.2019.12.11.14.33.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Dec 2019 14:33:34 -0800 (PST)
Message-ID: <5df16ebe.1c69fb81.6481f.a011@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <CAE=gft5JvCegmrjkKuxYr9dgASPFCkgy97O1XGRyKDF6xT=BMA@mail.gmail.com>
References: <cover.1575529553.git.saiprakash.ranjan@codeaurora.org>
 <0101016ed57a6311-e815485c-4b77-4342-a3de-203673941602-000000@us-west-2.amazonses.com>
 <CAE=gft5JvCegmrjkKuxYr9dgASPFCkgy97O1XGRyKDF6xT=BMA@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH 2/2] drivers: edac: Add EDAC support for Kryo CPU caches
To: Evan Green <evgreen@chromium.org>,
 Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
User-Agent: alot/0.8.1
Date: Wed, 11 Dec 2019 14:33:33 -0800
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_143339_298310_E5B0E616 
X-CRM114-Status: GOOD (  12.68  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS
 <devicetree@vger.kernel.org>, Tony Luck <tony.luck@intel.com>,
 psodagud@codeaurora.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 tsoni@codeaurora.org, LKML <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Robert Richter <rrichter@marvell.com>, Andy Gross <agross@kernel.org>,
 Borislav Petkov <bp@alien8.de>, James Morse <james.morse@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-edac@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Evan Green (2019-12-11 11:32:37)
> Hi Sai,
> 
> On Thu, Dec 5, 2019 at 1:53 AM Sai Prakash Ranjan
> <saiprakash.ranjan@codeaurora.org> wrote:
> > diff --git a/drivers/edac/qcom_kryo_edac.c b/drivers/edac/qcom_kryo_edac.c
> > new file mode 100644
> > index 000000000000..05b60ad3cb0e
> > --- /dev/null
> > +++ b/drivers/edac/qcom_kryo_edac.c
> > @@ -0,0 +1,679 @@
[...]
> > +static const struct error_record serror_record[] = {
> > +       { 0x1,  "Errors due to fault injection"         },
> > +       { 0x2,  "ECC error from internal data buffer"   },
> > +       { 0x6,  "ECC error on cache data RAM"           },
> > +       { 0x7,  "ECC error on cache tag or dirty RAM"   },
> > +       { 0x8,  "Parity error on TLB data RAM"          },
> > +       { 0x9,  "Parity error on TLB tag RAM"           },
> > +       { 0x12, "Error response for a cache copyback"   },
> > +       { 0x15, "Deferred error not supported"          },
> > +};
> > +
> > +static const struct error_type err_type[] = {
> > +       { edac_device_handle_ce, "Kryo L1 Corrected Error"      },
> > +       { edac_device_handle_ue, "Kryo L1 Uncorrected Error"    },
> > +       { edac_device_handle_ue, "Kryo L1 Deferred Error"       },
> > +       { edac_device_handle_ce, "Kryo L2 Corrected Error"      },
> > +       { edac_device_handle_ue, "Kryo L2 Uncorrected Error"    },
> > +       { edac_device_handle_ue, "Kryo L2 Deferred Error"       },
> > +       { edac_device_handle_ce, "L3 Corrected Error"           },
> > +       { edac_device_handle_ue, "L3 Uncorrected Error"         },
> > +       { edac_device_handle_ue, "L3 Deferred Error"            },
> > +};
> 
> A comment is warranted to indicate that err_type is indexed by the
> enum, as this would be easy to mess up in later changes.

Instead of a comment please use array indexing.

	[KRYO_L1_CE] = { edac_device_handle_ce, "Kryo L1..." },
	...


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
