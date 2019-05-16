Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A481FFBB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 08:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VNCTdyY7WaTq038BVISKY/LDy6Vsr/j0Vjb9nVDZ9Q0=; b=A6T
	NjIguZCOZ3d8rm1jLEphiQDfl4gZD/s2k4OFS3EQtcHHZrpgs4z1+Ul2pOdVBd5U93qG6mumthmXV
	8klp5CxouhrpqClk2quc/2qVjb5psrSYHeu/qA8Uhi46TcwXsDLgugqiy55R9iJ4uXH+6lq6vLzXv
	BaBB1+NTB53n4t4+nz8f9pbFG6hVOaeooplnZhCaDlu2m0LLnCFcjKUz58f3qeoboJBfssmacg+IP
	EH1YZXDJ/xLrXwP5tC5hoVfMOWN9gxiap15Kjb9hStA41zJ0P1s5Inazc2CStVbTQg/719VNBQDyY
	n+1Z5sWStrHph2Jrq6uQl4/gAjYppEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRA74-0004D8-Tz; Thu, 16 May 2019 06:43:34 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRA6x-0004Cb-Cz
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 06:43:28 +0000
Received: by mail-pf1-x42c.google.com with SMTP id v80so1310218pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 23:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=SqLUabMMzxCxSOebL0RIYlE+FsNekjMKv483Qc3eXKM=;
 b=Gj9MopXzSpqX85oENFLgCbsQfKjA/2mr/v96/x0XAw0Hvk8iHXljsbU6k1UPa6KoNO
 WpUUifFovIYExm9wJGV4MjhzPN0QSigTkRwcSmnRqbu7Wmrp95PheEVUpAuud2Wz6u+0
 3JcCajMcAlMUF0NUGU71tAlntbJTe3XI1CKwg9GQIHwYNYpXvNYLAFWG63JDkxX030Lh
 honZKMzNdGDe6REuxNlGdr6zwSaI436RfSlMSClCWcXdp2u9xCCXVAHRUUqxD/isb94S
 3ivwctJp1mJY5KiwBTxkNUc+8nauKCHnmHaVY74lpJlX2PVhJJpNWsKs6cHOLFdw9WaB
 q6Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=SqLUabMMzxCxSOebL0RIYlE+FsNekjMKv483Qc3eXKM=;
 b=l0AeDFtauLevwgjO+01fvzFqb9iFZCR6o6bXnZ7a5VrO28YFgNyywTPmuwt4oxC99M
 5AZJRXuTQpEoVY77sz0jqFs1UAIWbaoowC9KDNoTlbjniwThYaH2Ztbcn9MrXjjGoL6k
 JplqP1HIQvyESESJzWPAXkYFNGBpevq3Fqy0dPVKTidq1cinpL+/PyRNlIyX6UkkEe/Q
 CWgXWH2vSw277joosGZKriru73S49QhG+dJ/0vEyacgwnwOUMRAIMpWhIB2xc+jS3pHw
 gCp3KN/lgpQBvwmvSST7PRh/0Dg5XbiuC71twUgJ5aG94uswk7iFOkrpHpjABo3C+oJD
 MOwA==
X-Gm-Message-State: APjAAAV/pzQZHGo1RZCxXviEyIxI709mHtR0Iu8rioo7QRLbyqGS1dBw
 lb8pL4BQmVdY+IV6L09FpSQFJ0thbWQ=
X-Google-Smtp-Source: APXvYqw0OJ+MvOqREfJMhEjQhim2lbFJ/Zb5HXYS1GVYKGGhMwv45V3f+lNiCcI9UVQISNRsYlPgcQ==
X-Received: by 2002:a62:c4:: with SMTP id 187mr40911403pfa.55.1557989006488;
 Wed, 15 May 2019 23:43:26 -0700 (PDT)
Received: from localhost.localdomain
 (99-152-116-91.lightspeed.sntcca.sbcglobal.net. [99.152.116.91])
 by smtp.gmail.com with ESMTPSA id w194sm11196050pfd.56.2019.05.15.23.43.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 23:43:25 -0700 (PDT)
From: Olof Johansson <olof@lixom.net>
To: torvalds@linux-foundation.org
Subject: [GIT PULL 0/4] ARM: SoC contents for 5.2 merge window
Date: Wed, 15 May 2019 23:43:00 -0700
Message-Id: <20190516064304.24057-1-olof@lixom.net>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_234327_441526_81C07618 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

The usual batch of patches for ARM SoCs. Like always, DT is the dominant
portion, but there's an unusual amount of driver updates this release.

Main reason for that is that ixp4xx is seeing a bunch of modernization
work by Linus Walleij, and some of that has included bringing some things
out to proper driver. Acks have been collected, but are merged through
our trees to keep things together.

Besides that it's a quiet-to-average merge window for us.

Some statistics:

82 downstream branches
791 patches
175 contributors

4 upstream-bound branches (platform, DT, drivers, defconfig)

New SoCs:
 - Intel Agilex (SoCFPGA)
 - NXP i.MX8MM (variant of i.MX8M)

New boards:
 - Numerous, see DT pull request for full list
 - Most visible one is probably Nvidia's Jetson Nano

Contributors with 10 or more patches this cycle:
  54 Maxime Ripard
  43 Tony Lindgren
  38 Christina Quast
  34 Linus Walleij
  29 Neil Armstrong
  27 Andrey Smirnov
  20 Krzysztof Kozlowski
  18 Thierry Reding
  17 Amit Kucheria
  17 Anson Huang
  13 Dmitry Osipenko
  12 Douglas Anderson
  11 Biju Das
  11 Manivannan Sadhasivam
  11 Ondrej Jirman
  10 Fabrizio Castro

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
