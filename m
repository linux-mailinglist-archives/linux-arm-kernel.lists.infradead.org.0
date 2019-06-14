Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E80045301
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:32:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqMQi6MjEsngkwCUcxxSzWzLisz25pmsXQA9X5VKf9I=; b=XHvfUH99VIU49C
	QPOPzk9LmXhUr7ZZe8r5hUoNPlxfHIpb5aQ6iOWBCHJYXBGWHd2xL1kXOiUf85U6EhDefam+k3A0+
	oK3tndIbH6B+cMgk3Y7gVHlTKlu8JOSBP6Rbntpy+ocW3PabQGMOioZSJyIS0/uIdp2r5am3raoie
	7Zd1yjsuXBwZp0+VYdez1Kb8FY0dx+MjVVVexD+62RiRhTrHoMEzD2kYD/fkf8JoJbCdX18I4P5Uc
	5JGZv3NU9MLERU6xMtlAidHrnkxZ4MMEBOpQ0iDXsrMzi/nuULw+16dYZcaNFXBF8MsgLbSVQyKRa
	hdP3/6LTQrfpLOIb8TCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcx7-0004ks-Pq; Fri, 14 Jun 2019 03:32:33 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbcpY-0004dz-TB
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:24:46 +0000
Received: by mail-ed1-f65.google.com with SMTP id i11so1373844edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:24:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2AfQZDv35ufBp3E88y1iMFldBKX1WcqrUozmSOVMRmA=;
 b=Eqq6D0eMhITIWFmdEfz69fObc6/t9wleelOK7GYE2NoyVr0gEvIVgEudRZxQqlfGfw
 ypMhIFPL4vvkWgfW8TlG/6x+KNLpKsujvCD6G3gKq6ufvhimK0IkH+ibor03KH232lB/
 FmTDaNj/Hj19n9tdVLU/k1A72VCJ8rHy2Sjdug+HHaSnj3fkTSyIpfcnWtJmvwmLztJ+
 Ce5+fjsHI2D5HFrJlH5ar+Hvq2agvlWifoJ35wJHpu3TjCmM6M4YocsVInEXTDKVJzk2
 l8GG/x+Zby8ewrMExzOE+yfE45nz1qFq0OMyGzeMztYaEtV3CfvIgGcxiuwiqR0FjqcW
 uu7g==
X-Gm-Message-State: APjAAAWLWmW1QoN7DCtcCzL2RAoskckkxzmpccHBGuWERG9SG1lj9xOL
 pCMyHypxWVKUWDAOLgiTW0dzosjXLGA=
X-Google-Smtp-Source: APXvYqzoSlUqf6qMrIx5kQG0Kvoxoge7F+61wcFsnPHXANuThzqWBG/cB7D1GNgSETH0KKslsfXiXw==
X-Received: by 2002:a50:9107:: with SMTP id e7mr13183024eda.280.1560482683268; 
 Thu, 13 Jun 2019 20:24:43 -0700 (PDT)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com.
 [209.85.221.45])
 by smtp.gmail.com with ESMTPSA id y22sm447097edw.94.2019.06.13.20.24.41
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:24:42 -0700 (PDT)
Received: by mail-wr1-f45.google.com with SMTP id x4so881750wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:24:41 -0700 (PDT)
X-Received: by 2002:adf:fc85:: with SMTP id g5mr62039461wrr.324.1560482681552; 
 Thu, 13 Jun 2019 20:24:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190613185241.22800-1-jagan@amarulasolutions.com>
 <20190613185241.22800-5-jagan@amarulasolutions.com>
In-Reply-To: <20190613185241.22800-5-jagan@amarulasolutions.com>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 14 Jun 2019 11:24:29 +0800
X-Gmail-Original-Message-ID: <CAGb2v67eNu31pQExMTxAki1Wp4tdqRH87Oh+1j4Cb0cuK8pQRQ@mail.gmail.com>
Message-ID: <CAGb2v67eNu31pQExMTxAki1Wp4tdqRH87Oh+1j4Cb0cuK8pQRQ@mail.gmail.com>
Subject: Re: [PATCH 4/9] drm/sun4i: tcon_top: Use clock name index macros
To: Jagan Teki <jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_202444_986781_01E51FBE 
X-CRM114-Status: UNSURE (   9.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 2:54 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> TCON TOP mux blocks in R40 are registering clock using
> tcon top clock index numbers.
>
> Right now the code is using, real numbers start with 0, but
> we have proper macros that defined these name index numbers.
>
> Use the existing macros, instead of real numbers for more
> code readability.
>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

However, you might want to rename the clock first, then switch to
using the index macros?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
