Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1194ECAB8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:44:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nw6gyBBZMRXRtMx7VjK1MPY1tjW3OE2njTp+ghoUhVY=; b=S1WN/Ip9XjnKdC
	TuAnzJ0SyYMxDzjE6NxrEIIP+fghmQ02tWLYIOnnWrickoj0yFjrjmI/UUYENfUlBjph7mzC2guYO
	oHdka6X0/EZalnerPC7vtinnAJH3P9d78z0/fJwCgM70i92EpdFfIYz7irS5KsofpfEdy6hQ4RISb
	TF17sZPuwhr3aBXLa6MEDS9uqrDCeNrAsXsR6pywsOly7IgMDjTUTmkrWYYzZgThsLAs9HDtiUCN2
	S1G4vM2XsdvLnjdSnGRjOdNUzvomOpo5cU6TJWGsRoDM7ea28YD/Du+RquYAxRwOEHmfCLdYnIxuT
	lEWel103gKWnqA+20yAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG598-0005ce-Di; Thu, 03 Oct 2019 17:44:10 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG58y-0005as-JW
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:44:02 +0000
Received: by mail-pf1-x443.google.com with SMTP id h195so2218856pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 03 Oct 2019 10:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=wgtFkL/FFRFrlD7W9UDHQPj6n9N+/Wo8Jj+YzpO0YxI=;
 b=XUFGIGD09TqEqmkFIqlIZjHwCq9P4g6INXCLyMVZlHNV2VUniAmRCDbm/DbO9MxJ/f
 Zz/bwzmkRc+zW9SB0447I2PEhwobtbUQljlruZs7iTfvwGn9G0XLOJCQHq9PtHqLjzQV
 LiYGvocI4OuJKqOmXEJRNnd1SSCB9WRHEG/+RTmytroyvvq0d1PB47xtO+mku1c6NtXs
 6UxLj3dEpJH74J9al6AcBlchVPJl8vzA6hoLwRR1GNycQWp6rokCBTZz6l0QKpF4W2r0
 bIQe5SvvpEP2dBxQzb1s/NlLLZ3Tpfe0WZi7YxSzIZ+9QFngdw616BopzSIICdH569jY
 R1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=wgtFkL/FFRFrlD7W9UDHQPj6n9N+/Wo8Jj+YzpO0YxI=;
 b=jSitvCNUdi/SoBsrNQSYmTs9d59xpkqwmAAi7+InxQYjUcS6MG3NAEdP6ilBuMPfRb
 Zt+wGmDXgWdJqfybFLFRFsTJEMJqjls8+CsT4gqsZHgFixyHCFR3SEYAG878SU1GSi58
 RiNue0bD9pt/OaXL/ah0/xXov1IvNajJkNK6yhfymEty2W/yAI2cgeW8SPpDbyHBAV5c
 bC87MY7kQB7xQOIdeWqqfkNWiVE7DPnvS111xI4C13q7UWmtDrn+VpaPxvOAqj19eZv5
 FabvZE6EIIPw7plri+YA4uPMyD/VBdb8RDMxLCEwUyHd4aLnR7J0UhQtZBxY5KRHwRrf
 p94w==
X-Gm-Message-State: APjAAAVqgkLevgF0nwSBzZkji6IcB8G9mAkq8Szw/ryju/TWUEVQ53UO
 ppGB9TFPMwX5tJRFbajaPEmfBw==
X-Google-Smtp-Source: APXvYqy7J6/8YHbG5klC9QquF261ah07vKhRA9+K09kh9B/5jxv89MEbsHK/KpR4cl3xiNk3tmrOEQ==
X-Received: by 2002:a17:90a:30e8:: with SMTP id
 h95mr12035505pjb.44.1570124639543; 
 Thu, 03 Oct 2019 10:43:59 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:a084:116f:9da0:2d6c])
 by smtp.gmail.com with ESMTPSA id j22sm5289821pgg.16.2019.10.03.10.43.58
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 03 Oct 2019 10:43:58 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCHv3 RESEND-next 0/3] Odroid c2 missing regulator linking
In-Reply-To: <20191001073901.372-1-linux.amoon@gmail.com>
References: <20191001073901.372-1-linux.amoon@gmail.com>
Date: Thu, 03 Oct 2019 10:43:58 -0700
Message-ID: <7hv9t5vi5d.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_104400_642553_F6115F73 
X-CRM114-Status: UNSURE (   6.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Anand Moon <linux.amoon@gmail.com> writes:

> Looks like this changes got lost so resend these changes again.

Yeah, sorry about that.  Your cover letter subjects were quite similar,
and several versions of this series and the previoius series arrived
close together, so some stuff fell through the cracks.  Sorry about
that.

Queued for v5.5 now,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
