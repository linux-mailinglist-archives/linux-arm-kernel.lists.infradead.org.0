Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8249D1647C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFTEq842WqIslpJBDPJkuTj2rbrSyq1XkS99yrm4mWY=; b=G83Je3gmk0UtL3
	iFN8V0fySZ7ZPyBUSWeCBAvaBWieOhC12G6vTKqNOzGM4rBnUIPz9C6zxaVu4CKUmUostZ3bWxX/V
	fkjg2yb5x56WIdbECzFgIMSV1RwQuHHUVEjRtkWFp6T+FDO0snugW15O/p1D+ciHAZQ9+VE78H9if
	6rj57iQP92ihgnGTQM7OD6Tg3EUpAXcuzFJ+qxKY9RhnUTVoT3/tuHMchiJfeOOPG4f5PnYCCV/2q
	q2HojuOkxzdnkPy6AJz15eZ4ni14wM8K+nEzsy7V6IqQuwdGAU9phUVSIGX/Pa1QXeFOnUSlMEo8I
	CqdIeAwuSNSqtZylI8aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Qv9-0005vr-Ry; Wed, 19 Feb 2020 15:05:51 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Qv2-0005uz-5Z
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:05:45 +0000
Received: by mail-ot1-f65.google.com with SMTP id j20so433659otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 07:05:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SBKr6SKoCafYNmFC5MjIcmPvtNTyDNU/puwE+3je3yw=;
 b=Q1V6qLvhWtGXLWwrA4jaQ2MyeYPu6RE5IP4VHavxth8xra7nUxx+hKjjqXC7xazBSe
 AOGxb+nz0CcKQvlBualIcZFUZNmaRvFQ/bTro8tqbnZV8DbDikTvrYTf/F/9SN7t0KlM
 8GdfZnNY955Cz6hNspxKdSawVq40o0SuaDDtB5opx5arNSnYVFTwHQZB2KuX2nU9CiP1
 eNlgFZRoHnM7Eie7AwwaXk6c6YCFj1iO0wj0YerlIuwFwsUl80Dp0X38Go4W6mF2kfGU
 JAgxdjuPXuXd7vjz6AuBZNUJ4pj9EQSzk9t4UuSdT8zSXkSWaWHUu2IRMj6damexqrGo
 whBw==
X-Gm-Message-State: APjAAAXl/FjnNj29sJUXvsF+rVWIVy4/2cS0FhB2/XivDThXvsCavj9/
 HgoNGgeFFaJV8eLVsD3FDA==
X-Google-Smtp-Source: APXvYqzQfbs3yejJP7JC1NIdQfNXPIqC6m0QklCphdJhvqRhtoYtKQhsaQx+0uOvCILhD83U6NqKKQ==
X-Received: by 2002:a9d:7357:: with SMTP id l23mr19144503otk.10.1582124742732; 
 Wed, 19 Feb 2020 07:05:42 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g5sm3046otp.10.2020.02.19.07.05.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 07:05:41 -0800 (PST)
Received: (nullmailer pid 22736 invoked by uid 1000);
 Wed, 19 Feb 2020 15:05:41 -0000
Date: Wed, 19 Feb 2020 09:05:41 -0600
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: stm32: convert i2s to json-schema
Message-ID: <20200219150541.GA22679@bogus>
References: <20200207120345.24672-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200207120345.24672-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_070544_208683_20F9CB41 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, robh@kernel.org, alsa-devel@alsa-project.org,
 olivier.moysan@st.com, alexandre.torgue@st.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, arnaud.pouliquen@st.com, tiwai@suse.com,
 lgirdwood@gmail.com, broonie@kernel.org, mcoquelin.stm32@gmail.com,
 perex@perex.cz, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, benjamin.gaignard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 7 Feb 2020 13:03:45 +0100, Olivier Moysan wrote:
> Convert the STM32 I2S bindings to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> Changes in v2:
> - Define items order for clock and dma properties
> ---
>  .../bindings/sound/st,stm32-i2s.txt           | 62 -------------
>  .../bindings/sound/st,stm32-i2s.yaml          | 87 +++++++++++++++++++
>  2 files changed, 87 insertions(+), 62 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-i2s.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-i2s.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
