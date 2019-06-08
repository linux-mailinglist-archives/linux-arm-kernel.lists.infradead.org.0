Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E3639AD1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 06:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=coYJR0B/DK+ijQspxRC6JYuPkqczcF+v8f9LYAPvDuQ=; b=eGvjZ2nTAzOWv4
	z9a+G9CBTXWhGhkj1j0qyslcEbpF/nPrsWH45ZkU51ulh0HIpeDQGyzY3rOFYJ1dg4Rk5+SzJZ9HO
	pUOWTK0Fm3poKxGeBpdns2hWdBwhHmP209DhSlhfUeVBny/ezF6ljBeYnPzVFK5damVGojqWbsFTm
	0fwkO3wlVhNagPUrzQ6eErSbjVl59VyPiFDEInJCV6lTIlXYoykxDF/DmUKJHYyMJFoTmvTECKgs5
	op1NP1QCFbkm+elAgUBXWZCuf/B+UdpqKbg6lVLylFdOSEESBiyQcAkP4tn0kAtrARrCv0QTUiq1P
	1727/LWWQcb2jf0bnUrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZSh5-0001TF-48; Sat, 08 Jun 2019 04:11:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZSgq-0001Sj-Ff
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Jun 2019 04:10:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so2230377pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 21:10:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=crP/L6ZX28vkkYT7tQbRmMKy/ZkhEnI0JhfxmVeFjC0=;
 b=TxsNOhcUk2dUhjgJIcbkyLXBtKqvJpHTaNc+xRSs9moW2ndwxj0wvHpb7UdzZ8GIHB
 kLyvVG7zidxP9IwSJaymt3F8UL/RjVnz25slMDWhjSipyy7NK5DrrZByM4hqIzNMUSwe
 ps+y0MD8eWL3A3X5z+GVpgopfFtTJLERmnFQgsMBKRMuDXgI16xf4cX5zcQqBZ0JbZdv
 UFvzSVX0RPSdSceNL453+7PL2y9nE2pm1Vr6heypDuiZ0SQFVNO8xElhZJO5HQFMq4N8
 EQ3h/DKqO7j8gM2LNhNJd3H3U9/qGXBzsfz16WMsfUUgYOqNRTcZIB6THFxBwhxXZGjN
 8Dsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=crP/L6ZX28vkkYT7tQbRmMKy/ZkhEnI0JhfxmVeFjC0=;
 b=N2yr5uBJ6AEOpv4aKcuxsumcbA7WpSUf1ZU+KUau4wK0qjPFA/a7HTYDSnvU2wVHRc
 msXdFzSYuu8iwoB28jcGEVTepj5Y4ybpAmvjQCr8oqYXNW6bmTsoAJjDMN71BM3TGP6f
 D2k9IjAprJ/Wr5iA6+cU3EXsq8fWt7D1F5XWK719sL5Chp6yevCTY28k6N4tXzJ0MNEN
 BXfiYE6vUjjliptpwQBjsyDPyeq/SnGil6YVDzvDp/J5tD6LnNW1IzT+QiF1LOFKt5C2
 nRyhkQq1iWMI3bSYawpxT9AKMrxKdhD8l5AQS1PpfE3m43JNHMhDXvAQVo6TltI/Ynea
 UFVQ==
X-Gm-Message-State: APjAAAWeziotQjQ6pkx7G1fIBqnfJz3+X23RmnrgTnMvK663ivzHQxAr
 CTPbB/39r0hUpjb4HVoICMqKEw==
X-Google-Smtp-Source: APXvYqyqDR2r/6Uj2YzgTATzPBXHYoPMxcYRP/mHWDNK1dDw68dJRtVmbbW/lRrBdRydM7vET5JDPA==
X-Received: by 2002:a63:ee0a:: with SMTP id e10mr5868676pgi.28.1559967047717; 
 Fri, 07 Jun 2019 21:10:47 -0700 (PDT)
Received: from builder (104-188-17-28.lightspeed.sndgca.sbcglobal.net.
 [104.188.17.28])
 by smtp.gmail.com with ESMTPSA id b35sm3516670pjc.15.2019.06.07.21.10.46
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 07 Jun 2019 21:10:46 -0700 (PDT)
Date: Fri, 7 Jun 2019 21:10:44 -0700
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 3/8] pinctrl: msm: Add ability for drivers to supply a
 reserved GPIO list
Message-ID: <20190608041044.GK24059@builder>
References: <20190605114302.22509-1-lee.jones@linaro.org>
 <20190605114302.22509-3-lee.jones@linaro.org>
 <CACRpkdaEe3uKAsSuhbToevXH1cMsuMUvwaopLPuD+JkDTnuEnQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACRpkdaEe3uKAsSuhbToevXH1cMsuMUvwaopLPuD+JkDTnuEnQ@mail.gmail.com>
User-Agent: Mutt/1.10.0 (2018-05-17)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_211048_549414_0307BE02 
X-CRM114-Status: GOOD (  14.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-usb@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 David Brown <david.brown@linaro.org>, alokc@codeaurora.org,
 linux-i2c@vger.kernel.org, MSM <linux-arm-msm@vger.kernel.org>,
 Andy Gross <andy.gross@linaro.org>, jlhugo@gmail.com,
 Lee Jones <lee.jones@linaro.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri 07 Jun 16:02 PDT 2019, Linus Walleij wrote:

> On Wed, Jun 5, 2019 at 1:43 PM Lee Jones <lee.jones@linaro.org> wrote:
> =

> > When booting MSM based platforms with Device Tree or some ACPI
> > implementations, it is possible to provide a list of reserved pins
> > via the 'gpio-reserved-ranges' and 'gpios' properties respectively.
> > However some ACPI tables are not populated with this information,
> > thus it has to come from a knowledgable device driver instead.
> >
> > Here we provide the MSM common driver with additional support to
> > parse this informtion and correctly populate the widely used
> > 'valid_mask'.
> >
> > Signed-off-by: Lee Jones <lee.jones@linaro.org>
> =

> Exactly how we should use of the API, so if Bj=F6rn can supply an
> ACK to patches 3 and 4 I'm happy to apply them.
> =

> Bj=F6rn?
> =


I'm waiting for a version that does not specify the reserved_gpios for
struct msm_pinctrl_soc_data sdm845_pinctrl {}, as this would override
the ability of getting these from DT.

I haven't seen such revision yet, will review it once I find it.

Regards,
Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
