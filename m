Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4DE166D41
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 04:11:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QQTuAS7zhHDiALPuJRL0dAnHooJqA+yOaObZJSNdHhM=; b=pjX+9uoAHSi1m3
	GND8reUCfSm2G4uJoiqzYRCIfvQTLMzQlEG1r0umqcb8mvDU7Jlf+qWddtqMgkWtJP1HWRrIqnCHL
	HUfq25RM5Sm04VYiL730i+tZ0eyVq8xR3Sd5McqIDZBQ+IfAKPIVgOP4VB1jpP84stR7nzP2PKTbJ
	D1VjCVAMFCaBOfq6ZJAWKHDa+oFmbj/efx4otV1dQIYwGGYICCg1TTODSPczAXiI3OfQ1Bw4CFoNn
	c8ywO2zXh6NQ+90IHL8yLtbwcQHlDyY/GBzkoRFqbgtTFOu8BRj+Z7YHOGeyInQZ8fPhchWFyhJjI
	sdVWC2+RLSBuGu+Es14A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yic-0007Pz-Py; Fri, 21 Feb 2020 03:11:10 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yiS-0007PV-JI
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 03:11:02 +0000
Received: by mail-ed1-f68.google.com with SMTP id p14so558525edy.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 19:11:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5IR9MInLSyig3scu1SFmQNLrc98r/Dsahj0QMhBQSvg=;
 b=DBYJdWIRPK9btNFq2SgLocTWeIhX/GTloSUKLH95n40Oe+G+IT4eScdG4Rk5L+I5Lz
 YmcZnVw0XB+8Hu/g+RKxmlEPUwMEisUCM89v8CYtyIxu1hQ6TpsXMcJ1D/7lEO31DMmb
 zB7cWtyYFOrudA+rIzga9absQ9B4aKhuTHgUOsBMrUK28nfqMSpYKN1wZEeMJOqLkDJk
 ZRtvxnwd9Va8MuIKzKTDA00davW+m2TwiIRdj5bDfcHHlhzRNoXwm4M9KDiKrD42T3GZ
 EeZNz+oNvtB2PImMZaKUnc8A0sYXLid4zFH5UzNXIL0o/kNm18LkLiQBtoKckj1oTrUb
 21yA==
X-Gm-Message-State: APjAAAXLRzIXmX+Q+igDO6eNN8eejBpqJXWnsyDKAfqCDv9EQUKGkTbJ
 y9YQawEwNooT2ZJ1C4TGOSWGcg7grMk=
X-Google-Smtp-Source: APXvYqzyg1JodGQ2zoRx5S5NH5B9FxZEY3a9jYM4jPJyzMJTS4bk9uoQ3Ug4mHHEjMS7Q84wyFQcKA==
X-Received: by 2002:a17:906:504d:: with SMTP id
 e13mr32871707ejk.103.1582254659165; 
 Thu, 20 Feb 2020 19:10:59 -0800 (PST)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com.
 [209.85.221.44])
 by smtp.gmail.com with ESMTPSA id w5sm90316eje.14.2020.02.20.19.10.58
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Feb 2020 19:10:58 -0800 (PST)
Received: by mail-wr1-f44.google.com with SMTP id e8so349942wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 19:10:58 -0800 (PST)
X-Received: by 2002:a5d:640d:: with SMTP id z13mr44015219wru.181.1582254658558; 
 Thu, 20 Feb 2020 19:10:58 -0800 (PST)
MIME-Version: 1.0
References: <20200214120934.107924-1-maxime@cerno.tech>
In-Reply-To: <20200214120934.107924-1-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 21 Feb 2020 11:10:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v67L9uMQJfx7BBgGUSq7D=LEE1w89s-kYQX+u3iPtrJX_A@mail.gmail.com>
Message-ID: <CAGb2v67L9uMQJfx7BBgGUSq7D=LEE1w89s-kYQX+u3iPtrJX_A@mail.gmail.com>
Subject: Re: [PATCH] drm/sun4i: tcon: Support LVDS on the A33
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_191100_634830_3EDBEFCC 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 8:09 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The A33 TCON supports LVDS, so we can toggle the support switch.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

The user manual doesn't list the bits for LVDS signal polarity though.
I assume this was verified with the BSP or actual testing? (or rather,
will be in the LVDS signal polarity patches.)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
