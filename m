Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB47FD4610
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 19:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeeH2jHa1Mi3duV9dv5xYs4X8LvzDP9BtbPOH/IDHmE=; b=GP0Kv4oKlEOpdI
	k5JdBXJwjaI88QaQoWaTtVXXoYn7FoaRg/sSKx9t5heiBZEt1XY/ScFJR/0Bn7EDFTrE80IJx9QuH
	QWNxwAbheDJ9/4RlAsDSkLkGMgtSKQso+rSYcWVnhvboyrYQSW4JsJb5i8KwLikkNG7zzwTWv+BF8
	NT++ttOlVNA1/RDrxjd/wm5GylUPcupmir36G8B2/HTBxy2XqhDMRdSLEc/yMwjLNMeOlLEQJUp0d
	WbFkQQU0shLcM1+N/wbBEbtNACBUbeRWX3mmfmhRUuMA36qhdW0uw+YjK06Pe2p5LkTnLXdGormWz
	Be8jAFztGWcTfu6YO/pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIyIJ-0003S7-8X; Fri, 11 Oct 2019 17:01:35 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIyI7-0003Pe-7V
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 17:01:24 +0000
Received: by mail-oi1-f193.google.com with SMTP id t84so8582116oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 10:01:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mZ12ktNjFYLHaQldgcLq5YbkCfRxwml6HBzJyQjPFcc=;
 b=K+H+3IB4VEHIjnEB0aUB37ovpSCSNN3zzacKbNOfMSD7grLcYgbS7laQIXRuSx/Dup
 LnHcKXNXbLWS9jd5BiYUGF28NGk0HqlH7ZsR5eayU0DAwxvK1HoSNddV7cZp3MVe3kez
 4xwjPZX/gEgrQZw426EcgUU9hNJi6eUSQxGWXG5x79dQoLGl5ynKUi2zB8oZdmJHSA4a
 iiLcFp/pVYfWynLRbSs2UX2dbBUOsQGNGRzjW0d7HuKk/BQNeUx77/qt++ZE6b1L7O2R
 R9OwcNaDtIN1b+yaW13VTSZG/+liWJKFrmHM00v5VUY8JYW7JWtwKp4mXUuGTqxmZxKx
 wb3A==
X-Gm-Message-State: APjAAAV0PdHUfftadTrQAJRZKoTnMb56AhU+wIriVO8t4oAZbqNxose1
 hR0PdXuc05Mv1KuFcAAmeA==
X-Google-Smtp-Source: APXvYqw+dKHsoqTOnX9vla/BlNQ96S8wiRdesNaBW3u1/5nYILYHP7qaKXZdqjpYAEGQlNkuonbBlA==
X-Received: by 2002:aca:f1d7:: with SMTP id
 p206mr12295309oih.119.1570813281285; 
 Fri, 11 Oct 2019 10:01:21 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e5sm2889559otr.81.2019.10.11.10.01.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 10:01:20 -0700 (PDT)
Date: Fri, 11 Oct 2019 12:01:20 -0500
From: Rob Herring <robh@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: Add AST2600 RMII RCLK gate
 definitions
Message-ID: <20191011170120.GA15442@bogus>
References: <20191010020725.3990-1-andrew@aj.id.au>
 <20191010020725.3990-2-andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010020725.3990-2-andrew@aj.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_100123_272134_1385E485 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, joel@jms.id.au,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 10 Oct 2019 12:37:24 +1030, Andrew Jeffery wrote:
> The AST2600 has an explicit gate for the RMII RCLK for each of the four
> MACs.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  include/dt-bindings/clock/ast2600-clock.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
