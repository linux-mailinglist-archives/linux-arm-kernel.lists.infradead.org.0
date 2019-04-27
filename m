Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A87ADB478
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 22:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+MBXzSaFWx1biPYbJgPpnxIFJEYaGpdY2NtKoZeBt0M=; b=B/6DJ3hzR1Yus9
	ti5SUs2QEF+xIApWiawbrnxV3sF2lrGH2dkMOnBMnRdUueQrjnibU9+fgWz/caazK0fH+GBqQil9v
	9zQA6inPuLIAIFiEG/rA+TkjNm4ZK5nnDC9/Ul1NfEkhI9yWpYyOezugD6FQobZcOD5kbi1kDbXpQ
	nioMIptjSm3ZEaxQoWMYLrXZGwPivkZZP8Jodr2b7CeSbC7tzCMUUzt3Lpq6Qni01sIu6cYCVhAtm
	xlhdaLOE4HhNDVBcQ2wNSI1lwStIJKwlMYUL7kZm9J2Ggm6sGI6b094KN33I4cWrKfTSspkXKwrh8
	SPRw8vPUAi5RFbv0TXDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKTmj-0000Xd-01; Sat, 27 Apr 2019 20:18:57 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKTma-0000WQ-Iv; Sat, 27 Apr 2019 20:18:49 +0000
Received: by mail-ot1-x344.google.com with SMTP id g8so4508783otl.8;
 Sat, 27 Apr 2019 13:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=twUn9tNCSqAO/LrZW7/v2g0R5QVO38tE+guDykXOQXg=;
 b=JwWXoppaPfjp8CMQp3BSi9WZ+Pzxhd74Yddyg81FymbGqWd4EmAEvX1MLsuFEGV5J0
 tDD/7KCTlPuKhAYDFth/I9+U8ih025ukIl7os5NEsRvcMhSE3Goh2235sfb0PXpPyK2M
 S0jnP3SQnLG3FjMugx0ggIHu2h4oHmlmvzAoFySJxNwbVy2enofTc+NRsYHQH7uFUWUu
 hb5dmMnyT7lnsWLHbez6YbTQ9R5j9H4JzMjygZgVm7YSUpwWUWiAqT7tk1EuVLWlQInr
 94nwC7zYRoxzlkJZxLDDsZNLqasuJSG7jyhNqyqvqOdupiiTO9Db+t5xXMVn5tC8LIJy
 ltbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=twUn9tNCSqAO/LrZW7/v2g0R5QVO38tE+guDykXOQXg=;
 b=YHYfrMIKhZGKj7l5sf9q0D5PaV//L5TLccz3wnT8sahzlO5aJVR0iz1QdbCOfHSayv
 vFzGjRLXP3fD+VsIyhdVO4HEoQbH156YApWR0upuncjJWNTRZObhTbjVpC5xLA9UBHaj
 Vu305IqHyb8mxwg7f6XWrk6s7L5D6sDXJ52Jm5w1TFmndNSKUqXJPTsRTkzdZ/ch3bHR
 YxjtItpleAUlX3kh73X59YOcbSFRSAvvHOOrYkW0c/3xvPh8f5yB7g/l1lmWKcaHbjgd
 5vQkfHDVQFXVbjw+S8CKje3OSbsNVb6geODYBZLu3kihhtZHfVw517bYWKoXVkvOScs3
 X3qg==
X-Gm-Message-State: APjAAAVV6YVxicIIJTJi5//UA1WGqtfpHY9ObCQjis5QpQ76AwH8qkgP
 0hbLdL9lb7w9Yol/LJXw82F5T6FWn3vWrgqM9tU=
X-Google-Smtp-Source: APXvYqzK2zosCn+VdAEkx740ufgWCPVDzpsEQ/2ZYaMULtPACgGqgWIHmO7qGAzt2uNh89LOVX0U5GsmbU7Wspt45nc=
X-Received: by 2002:a9d:3db4:: with SMTP id l49mr32891026otc.131.1556396327567; 
 Sat, 27 Apr 2019 13:18:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190423091503.10847-1-narmstrong@baylibre.com>
 <20190423091503.10847-2-narmstrong@baylibre.com>
In-Reply-To: <20190423091503.10847-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 27 Apr 2019 22:18:36 +0200
Message-ID: <CAFBinCCV6DWFM-nynSUGGmdvo1R6Lfno7V4d2+Fc17iS3+DSig@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: clk: meson: add g12b periph clock
 controller bindings
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190427_131848_679414_C7557504 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 23, 2019 at 11:15 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> This patch adds the specific Amlogic G12B clock driver compatible.
>
> G12B clock driver is very close, the main differences are :
> - the clock tree is duplicated for the both clusters, and the
>   SYS_PLL are swapped between the clusters
> - G12A has additional clocks like for CSI an other components
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
