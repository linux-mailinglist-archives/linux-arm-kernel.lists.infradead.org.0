Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C46127518
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 06:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqhvCVZaUMk0i+QONlM4duhVepkq6k9bzHC6RoSb0ms=; b=FpyBmtWx1yJzrf
	/m+7bpDecWZPth78hKebLi642Xg6IW5+h5EXxzuYs80VULak0128D6vgW6Nv6wCxNWgMAXuh7ipQE
	LhkzQBRRKbL+CyNUiWGBghwYuK4r8B2mkvRNrXraq3qrHxrH0WIrkawRHytS/hnTvGELYR3zNfN5H
	dAjBNI5aRY4kaqmMhYCrTroba7/F435z7bsu4rF6idBvehgSBE7v1Q5WhZ+ewi72ITqWi85ILOLWS
	3UOWLJjhoE01Jo8FiupRPi8jZ+yQWAQ3N7z61K+37C3CDwkkzDQVHbskm3KihbTsGIdrBGXfcs84b
	gg9XSujvKJBspwXB+Zeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiAhZ-0005O3-9p; Fri, 20 Dec 2019 05:19:49 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiAhP-0005NL-Al
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 05:19:40 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so3598596plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 21:19:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=bm7dz8v6v7xOopQbslTs0QmjP2BYiyMGUH15MYokzpE=;
 b=T8xo1GkC5V5B4E5N6KAFDgBCm7AFSOp69gdMMwtI2vAlHvsPDhf+UeOC5gcDEyaFj3
 rd8h1Ou4uORsFa80d/W7II+f/Vs4APxxVp/RyoPg/zae0UCa5jzR16YtWS5EA5P1d3I5
 jNhVWvMB05c8DGXG/lBVJxJO/bApuqbh2osb/TwnR0MynAD44fzREvMdhotqoIIBslkb
 dM+jFymHbtDhklJsRKE/hkjGz+RhTo+zWEFFQQ/VnoFQdXNgXyIT7lDs4HeM6idUZWse
 A3PRHtU2TswhSnu2YpH1VLCBIuQXeRHafpzkDhUguf1yzMfVY7sBxNVUCWJXAxQvcd3G
 uQLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=bm7dz8v6v7xOopQbslTs0QmjP2BYiyMGUH15MYokzpE=;
 b=k/Pe+DEo4fih3ERYV0cvflFafXBT4mQe5cPqYiQ5efBvtXrpVsAgZIn2CqhIq715la
 Hr1AupLojuMji4lYQd+IZL5kQYfq6ujHlMcEmF7J9PRjdH/M8uFs+Hnqfp202BwGbga4
 gbIKOpgwQq5K7x46vSKzV22RTdhGurdBRhR6zhH25TnvYZZsJqSzpc5fqC8l3rQUmkMm
 oL5ZLczlq/6Ie4dv/pA8B+qBWA9MTjhd6xfiQk+/80nqi6z66dqXMfJ6qg09h/Vi5bBP
 wSNm2ZmCi9a8SLw6e/0Jd9bs2z2F1S57Bq++K+vVK1QWHjqAkYErjeV0c6EpaeAFwvYH
 8GkQ==
X-Gm-Message-State: APjAAAXTidR1wNgiPHCGS1xWWYncKs2+9wk7HJcFafL/UkZ0CcrXHq6f
 9NhjdowrrOF5X6WTUEnpAF0=
X-Google-Smtp-Source: APXvYqzBVIhmtG1mEEMspWcAI71KWMdUUtEaeUdHQc7JJBOnaipwNbCctkETdpMkNQgcFZOJN4OLHA==
X-Received: by 2002:a17:902:680f:: with SMTP id
 h15mr7389837plk.114.1576819176288; 
 Thu, 19 Dec 2019 21:19:36 -0800 (PST)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id d65sm10632598pfa.159.2019.12.19.21.19.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 21:19:35 -0800 (PST)
Date: Thu, 19 Dec 2019 21:19:33 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Radhey Shyam Pandey <radheys@xilinx.com>
Subject: Re: [PATCH net-next 1/3] net: axienet: Propagate registration errors
 during probe.
Message-ID: <20191220051933.GA1408@localhost>
References: <cover.1576520432.git.richardcochran@gmail.com>
 <42ed0fb7ef99101d6fd8b799bccb6e2d746939c2.1576520432.git.richardcochran@gmail.com>
 <CH2PR02MB70009FEE62CD2AB6B40911E5C7500@CH2PR02MB7000.namprd02.prod.outlook.com>
 <20191217154950.GA8163@localhost>
 <CH2PR02MB700039E0886AE86B9C731A90C7520@CH2PR02MB7000.namprd02.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CH2PR02MB700039E0886AE86B9C731A90C7520@CH2PR02MB7000.namprd02.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_211939_372623_E322195C 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richardcochran[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Michal Simek <michals@xilinx.com>, David Miller <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 19, 2019 at 06:13:34PM +0000, Radhey Shyam Pandey wrote:
> I mean in which scenario we are hitting of_mdiobus_register defer? 

of_mdiobus_register_phy() returns EPROBE_DEFER.

Thanks,
Richard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
