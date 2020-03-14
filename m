Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F38F01854FF
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 07:50:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvHoSxyKCiyvxG6ge/6BWwtcpTOenG6YAhMEg1bfCL0=; b=hVgIlGWLeQ9X1t
	4crvtGkK5xwNzi+5zocLty7evvH5yZ7k+K8t6HNxWsrKVGzg4h3Jv++zDIXRo/B5K+asrAiHhtkGx
	9GsKXgJOF9kBpUvaFKfrsEO0L8Pdm+02Ym7rsD64Rg45gX6xOvLkww26KTAWIGXEC+TeLtrY78WeM
	orbT/ofG495WZ7nv0IwXA7h3GmqcQ+63pEhp7vU4E7i7gPAFWWrQhw9Vy/jweGYx0Ar0/yqvOuZlS
	moXH7DvBTbVd0kQCPAZzl9kxSOUq8AW3ZkczoV739FCT0J1yZKcE6vD3EHJAEXPYyRXdniDim3lJD
	YPiGO9PAP9LX4R49mYGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD0cY-0003ca-CO; Sat, 14 Mar 2020 06:50:06 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD0cK-0003cE-TX
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 06:49:54 +0000
Received: by mail-pj1-x1044.google.com with SMTP id dw20so2441657pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 23:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=05hQH/mydbkf9kLw/BVE0bzAJPp6+Ix4lu/k8QFSHrk=;
 b=YLSpqJxvMli0pmWUwSXpQTCPMX7fBVBl6LUIePPEmrIeiNXwtQekVYD4KDi/kTAOMD
 bq5+2QBWQ09YpAgf7IaDub4VZUlOb0zVtWXO5H2IZ+CXmtfAjFf5ZIjUpZiB74oAz+9n
 y1BD+m3opft4HrcEjwzGf0eD9OgxOxwyRG/t2BQWeCt3606TtYq0paxbB6Y7EgC0j9VD
 HTM2OZvrP9l+Y+Yi+IcNjaJ6YybuecvF9ZokD0K9Oj8RyHVdhdrg17xy9PF6QhOYW0RO
 JuzMXYtv8sR0shp70jtuLJo+HZMyEwBoRIdXjae/HMVUhMZaCUuSQBGg+gZDmMnZgVVE
 zs0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=05hQH/mydbkf9kLw/BVE0bzAJPp6+Ix4lu/k8QFSHrk=;
 b=AtjeGDpXkYb5lw4DQFhW8sxEwou5axoNkl9Y8FVQliWUocOnpoHNENwjaw0b9tmyAq
 mAWcHxISjNvSzcYZgpGumyFNAYLzlfMbUHk2sXHCrSs3zFyozAtB0ef1w7Rzb895Ime9
 /mC/UbKG3DklyRPykVD9JRipNM5sxVp2Uy7UvWD+2NqNDvh05PYihV9IlSHtOI4guRry
 P9gSczIrDEInx6UfvNdN0BX02ip4k4WDHXn7xS4mWLBwT5x7GtvGOZgdDgYFRq46JZao
 5FgfeQFnvLS211ysElx42hQKG4C9+6SPs7PlLhGyTVcO6b+8GcRUCropEwASCIHAdBN+
 Q3Dg==
X-Gm-Message-State: ANhLgQ2JD3YwTV7dwm2uX+NxZ+IDbpVg7TJkESHyW5KnNlTzbP5l7wR1
 Q8Q3M7Nh1fPiAjZEaVdDQHE=
X-Google-Smtp-Source: ADFU+vtkVGDOzsQ5IOyxks1qAgSbddq2JfKkVElfnRsaB1pvsH23gRXnk1ChS0jDsPHcaqJD6CTgZw==
X-Received: by 2002:a17:902:bc47:: with SMTP id
 t7mr17276549plz.47.1584168591617; 
 Fri, 13 Mar 2020 23:49:51 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id u23sm59330102pfm.29.2020.03.13.23.49.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 23:49:50 -0700 (PDT)
Date: Sat, 14 Mar 2020 12:19:48 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: maobibo <maobibo@loongson.cn>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200314064948.GA5285@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200313164751.GA30134@roeck-us.net>
 <20200314010744.GA5494@afzalpc>
 <0b41aa60-9869-ab62-4c8e-cbf7c62cdb7e@loongson.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b41aa60-9869-ab62-4c8e-cbf7c62cdb7e@loongson.cn>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_234953_292063_107623A7 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.0 PDS_TONAME_EQ_TOLOCAL_SHORT Short body with To: name matches
 everything in local email
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
Cc: linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 01:21:19PM +0800, maobibo wrote:

> yeap, this supplementary patch fixes the issue, and it works for my on my
> loongson64 RS780 machine.

Thanks, i will be sending a (hopefully) better patch based on the
feedback from Thomas.

Regards
afzal

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
