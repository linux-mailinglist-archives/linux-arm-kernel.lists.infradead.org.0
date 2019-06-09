Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D9D3AC23
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 23:52:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymaanbxl9c9/6f4fTbjCOBYer5oA6FigdOTNWFS8NMA=; b=kGmne4FL9aWbMZ
	/dKbql7Aeui+VS+FmDKZxXCvoVBHOhJ62w/jKsS6ppkRIgPJNYt2mWF2JtxgzEYVEnSOBX0g/eS3w
	TMo3MM8t+F6hJnhV6WuBsTx8srqPuTMpVswc+yGBTAp9B0X7kFN5BuypNHHGKcZAP9dscNEkXA+JJ
	BIjOaOlqYO5fUEoHfzy0h0FWPsgqZ3vtSdS1Hz+BLfoaIPOhpeec5uAYB8LCr913P6mEFRFDc6Hic
	eyEo+S72VRnQP9hh7146Z47mgYhRq28cG+i60ey1vT8Ari0BrnCgVNcMHVbqK+LNG7qIr543gS7wg
	pohwW8IdJ03kvYRF0RBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha5jq-0007oW-0r; Sun, 09 Jun 2019 21:52:30 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha5jg-0007ne-Q6
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 21:52:22 +0000
Received: by mail-lj1-x229.google.com with SMTP id i21so6155971ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Jun 2019 14:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3u47NK04VLWnks2ECFn41iwvdVn3zhAxLH2OdU56Dmw=;
 b=Cl0rVA3z38e6L8+wW94OpWj72TSurDFbVXa3pn24DZWJJzrOrvC+fdcaUtFQndqIgP
 txxwbLiEo1JBtH/op3umTaxckv2djd/WaR5I5qa+EGNTpKe0HtK0Tq8lpu4RgQ+aidH1
 RQN+njo2AS3nHqvbBnl0jOecogbHfZyq2ZQoBr6Un7SjO9AiaCcnPinHmJPgJB5ysgy5
 i4n1mXa2crZfqK3FvymkbMZneKJ/uEnHKZlQ/hZb3BaKT89F9FiUvIiAc0qIjTvgsyHc
 GdMMVySRP+4084kUDTBoax7mRi1FuV0caKswGmr9183KWlYwKXnOIZg9Gxdz/EPAQTx5
 IU6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3u47NK04VLWnks2ECFn41iwvdVn3zhAxLH2OdU56Dmw=;
 b=FwEphFvzL0MD1Hj0cm7iNXvJ759XAcn01QqwzBmjNw18bM1ah3v73k6KPZPHszvW5h
 IiaIAPILMRIcdmjdawMuYR7XIDIJkBNyN4StUUn/Yi1m/6pTQg744AGjHDop8Y+NL/JV
 CzNzBUXcyIkZsZM/KccCNkaazDXu5gscwQTODbW+cqmU56k14E0oIHREAWOg1XOzPEzh
 yGJhbaQvI6NtIDsdsPvZV2XEsYRmVhjhVUxIOrm7iTSZXpilbPCSLg9PLGk+tnAhlJIb
 T+s/W280UHne16645U+l/ekjkfcvaIr8Ejf7Htx/JUXTMmC2HkhCpa5IBmDYH+0IM+LS
 WT/Q==
X-Gm-Message-State: APjAAAVPyWsjeb/+fh3YAh518Yb4+7o1WY5Ihgcfsbe2P6s1rRgsYeeL
 eNMqMqqWpQwsVJ+Yrit/CwBrJ2et/2H+QfJUn5tEYA==
X-Google-Smtp-Source: APXvYqxxvAPH8DO2c0X0YBL0L2eBq2A1RkbOzyw6mq+phUKB0rDXYXygI1YbFcBf/zVxAnxBKN7lStrxUTnG75YtXlc=
X-Received: by 2002:a2e:9753:: with SMTP id f19mr10655574ljj.113.1560117139172; 
 Sun, 09 Jun 2019 14:52:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190609180621.7607-1-martin.blumenstingl@googlemail.com>
 <20190609204510.GB8247@lunn.ch>
In-Reply-To: <20190609204510.GB8247@lunn.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 9 Jun 2019 23:52:12 +0200
Message-ID: <CACRpkdbOnxZJZ=Lvv0mbnrCg8kPWyeRsBbOa2cUiwjcPnR=4RA@mail.gmail.com>
Subject: Re: [RFC next v1 0/5] stmmac: honor the GPIO flags for the PHY reset
 GPIO
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_145220_844466_C33EA75C 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Alexandre TORGUE <alexandre.torgue@st.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 netdev <netdev@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Jose Abreu <joabreu@synopsys.com>, Kevin Hilman <khilman@baylibre.com>,
 Giuseppe CAVALLARO <peppe.cavallaro@st.com>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 9, 2019 at 10:45 PM Andrew Lunn <andrew@lunn.ch> wrote:

> Linus can probably create a stable branch with the GPIO changes, which
> David can pull into net-next, and then apply the stmmac changes on
> top.

Sure thing, just tell me what to queue and I'll create an immutable
branch for this that David can pull.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
