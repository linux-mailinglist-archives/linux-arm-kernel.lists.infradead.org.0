Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C4D118C22
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 16:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFU4DW88SVo/eKsvUuftr+ZH1lj17abVtWtjNc49/qQ=; b=Lqpiib17M6diRW
	hRLrW30y538fbPQCTUiyPWOX9+44RiIsKsyj86kRdh+VLuZLKMcC36QEM1EbtRalCRLL+t7/0wfmP
	QGys9XNFQGIquvhB7v1MAAt3eR6dRtj787x33dDreY+oELchNWCibMJwT/th4bcrF5x1pb6yEhv6f
	8raAi23HXBPJdZ4icuB+iHr04h00g+5+tBQuDTqFAFC3cTjDSdBOYcpCmQOu1CKIUdUPIos4eKyhY
	oRwuBSpoHo+f2K6PseGYAac9it51+sF2QZHUa230fbTME2N55XBDKcJjV3fSQpf6ZSIf0BWs42dxv
	NUFdHRABeg/cA/7hB5jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iehAR-0000qI-9b; Tue, 10 Dec 2019 15:11:15 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iehAD-0000pX-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 15:11:02 +0000
Received: by mail-ed1-f66.google.com with SMTP id f8so16301028edv.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 07:11:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=e5IcAHdSxCVaQr71MDw/u4OSVbxGZ7HWDDux3wC+gVQ=;
 b=WphO3PmFXXfuHj1cmT6tqpJQLCxoKf4KS+63vtTmefwffbxZgAwA/I8E3avfqdGO3X
 /k6nmMTc7vojCHxYRRHMX5JdWOSPYIgo5nweZDsn0Tbi8gKATGjn2PRnnnjZV4Gy/pfl
 PNMo/x9amjPqcMiLemunU5YglvwSAYRP09J7pdSq+zNX17Z7TtmUyHyQ1512oRnNPm3f
 KexAjZzHHwBBrMCPvKMO9mZxrGdcJ9G/r696Ml7UOlSZ0/GCAuWQJzTqG1CI4/dXN4YZ
 0IXSTLRj/k/UuKxslqJnn4TKEzvjAcy2OU7XW1LorC6P/OV+9u0elYC7QgDWJdqg8+BE
 uh/g==
X-Gm-Message-State: APjAAAXiyYeHvwMlOIBJKA4RStgjx1Ap9iPNaA54VpIw6enj8BXvr9jk
 tRgU/L06Rz9xBA4LvW/zJdI=
X-Google-Smtp-Source: APXvYqw5jbPq4FswRVWVBj9g7UTnNhv9eRpXy/D1mfxGrUvwdSteqcL3i+CjwMzPw/KYvZxjGO+jRQ==
X-Received: by 2002:a05:6402:305b:: with SMTP id
 bu27mr39330099edb.191.1575990660199; 
 Tue, 10 Dec 2019 07:11:00 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id ck28sm85351edb.45.2019.12.10.07.10.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 07:10:59 -0800 (PST)
Date: Tue, 10 Dec 2019 16:10:57 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 08/10] tty: serial: samsung_tty: use 'unsigned int' not
 'unsigned'
Message-ID: <20191210151057.GG11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-8-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-8-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_071101_652698_7359F630 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shinbeom Choi <sbeom.choi@samsung.com>, Hyunki Koo <kkoos00@naver.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 03:37:04PM +0100, Greg Kroah-Hartman wrote:
> The function uart_console_write() expects an unsigned int, so use that
> variable type, not 'unsigned', which is generally frowned apon in the
> kernel now.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
