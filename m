Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92C2119578A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 13:53:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFA3QAkgIdq8nINzgI+F3uXIFw6BK/b5oPp+xt9vblU=; b=R4XvNHp3/r75BT
	C1SM9b3wZspcfiLbjRvkZZOJO4Amd4/9L5ItnQrV8J8xCsFsylw0jeRJecTFPoX9fvqPJYMKIB1Qp
	Yu3LtfsvUgz4f9NaZo+Jw/C01ty/275ZCsFxkhanaLldHo8rLsUf8e87o7hf763hl1MLhNJLvTz8x
	L9GtnN/Fy31UNSxDNmQ4MF0PUoUsXNfSe6wq9wW5BQQvIMj917DBvjDyY2trQBNl+MuWlxXN0COVs
	1d41wiR6xWccOrdcX8iKGpCZ6+4ExsCOKqJQBnHIudlRhaNtT+ozcO44friTs1VOrpYsV4p9pydRv
	wILmIawGISttA1hE//Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoUN-0003O6-6P; Fri, 27 Mar 2020 12:53:31 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoUD-0003Ng-EL
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 12:53:22 +0000
Received: by mail-pl1-x642.google.com with SMTP id s23so3402653plq.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 05:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=G68liNtd5NAG8F0BUIcyo/RJH3sB3+HWc+rvRzN4j0s=;
 b=GE4RxeLUl+XDIRjDHsc7r1GUEwGkxGTk5jppoxA5ILovhndXMF/ujBurOL+/JkFMSM
 +bbYVGl9yQ2iTsxsheQSgowngt51vzFgFJMz7XgW4wNQE+0Ux9W9mcEo97kB+lW1XpX1
 Fjy8DnG/PyYkN2Xx0S1jUf2DNtBGca/QdBTm0gZTBbb5DcnQhdxgdqDQFkCwnqR5sMw8
 DiWMZMDhj19kkLU5hZ3ct2BPboJy2NURR5muASZRP+wSbNzgEqoh6/6mbHwavM3IPiHH
 mjC28oO48zd/RIPc3dQwMs5iH5j//DBdK6+xr84cYVFk+BSbEFl3Yjn96nEy7HyW7MfA
 KizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=G68liNtd5NAG8F0BUIcyo/RJH3sB3+HWc+rvRzN4j0s=;
 b=C+FvWZpVl/PUGGULcztWQlWshDTqead8KhBxevecrwwsbSX++EmVYlQ93E0z73dw4j
 18LpRmZdCFt3tINPrUNxyUjHPch0sYYwEGghJqXx54hRD94rD+6D+l9b3sXlpwVY6twY
 lcblhrWT0WRYlmlxgZ7M9oC9sq52IcNGvrN48NB9jxd222Iu6kZlpyWxPzHxTY8y+L9w
 0cYDmyQe0OfewDayi+3Esxe8A6/7hXutHbBW3CrPrrHJGLv7wJMwMWwd8yxYsGXzhMha
 NgdEc0m6bVCVk8vehTVZ7GH268j+YDXFUyZRalPq5Z/Lafpb2Wde7U/nXsRLyFCnsRm9
 7BmA==
X-Gm-Message-State: ANhLgQ3zDRGXt55QZaN594hj79kdRsfmqyNC+7++hNTYSZjWXbVGWbkA
 NjA2QiySZ2/sE2C1vfjChYA=
X-Google-Smtp-Source: ADFU+vur85N5b/dYIZxb3jY8T3tnGlocKor6avYVXq6UVEyv5NAFg9S0iJYegIyPVQZreo4gMtB6vA==
X-Received: by 2002:a17:902:d895:: with SMTP id
 b21mr12893200plz.118.1585313600479; 
 Fri, 27 Mar 2020 05:53:20 -0700 (PDT)
Received: from localhost ([49.207.51.33])
 by smtp.gmail.com with ESMTPSA id c9sm3710728pjr.47.2020.03.27.05.53.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 27 Mar 2020 05:53:20 -0700 (PDT)
Date: Fri, 27 Mar 2020 18:23:18 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3] ARM: replace setup_irq() by request_irq()
Message-ID: <20200327125318.GA4979@afzalpc>
References: <51cebbbb-3ba4-b336-82a9-abcc22f9a69c@gmail.com>
 <20200304163412.GX37466@atomide.com>
 <20200313154520.GA5375@afzalpc> <20200317043702.GA5852@afzalpc>
 <20200325114332.GA6337@afzalpc> <20200327104635.GA7775@afzalpc>
 <CAK8P3a0kVvkCW+2eiyZTkfS=LqqnbeQS+S-os=vxhaYXCwLK+A@mail.gmail.com>
 <20200327111012.GA8355@afzalpc> <20200327112913.GA8711@afzalpc>
 <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2sqika7=3D6Zgkz+v8HtGEc0q0+skWG8mSKuL+qSoYLw@mail.gmail.com>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_055321_512611_5F60E36E 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 Hartley Sweeten <hsweeten@visionengravers.com>,
 Tony Lindgren <tony@atomide.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Lubomir Rintel <lkundrak@v3.sk>, SoC Team <soc@kernel.org>,
 arm-soc <arm@kernel.org>, Krzysztof =?utf-8?Q?Ha=C5=82asa?= <khalasa@piap.pl>,
 Viresh Kumar <vireshk@kernel.org>, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>,
 Shiraz Hashim <shiraz.linux.kernel@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Fri, Mar 27, 2020 at 12:58:57PM +0100, Arnd Bergmann wrote:

> I can probably fix it up here, but it would help if you can resend the
> remaining patches using git-send-email with all the tags added in
> and the normal subject lines.

i have sent the remaining patches using git send-email w/ all the tags
collected and with normal subject lines, as a reply to your mail. They
look okay in patchwork, let me know in case of any problems.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
