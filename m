Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E34CC118C1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 16:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wioDYtivfHyjIsmvqGgvywTM6ZtX4IwgtX5yzKR1Qf8=; b=gwzHgPEQFR1HDP
	L+Oj8aX9J5C8bQM2239/5xQIFOFyYXdwcTxqwRjMGZ/QYzq+/5xJu3uNc1wEYfS8NMsoahbBthjoS
	Uty07AIxJxx2yBaJWyyP4w2+eEoIEv20zMcVI5L1CvDHbzmhGqY2wGeVabpDPNlQ+H0vRO3RqstAT
	mx2wUJ+gCc/fHljLJieOR7oTdFgJgzn4cuv/D9F0DhNXkyd/ZhoP1y5nwZ0A/a5PVJSFEbF7m3N6v
	1tUbPxwdSW/DA2fVz1giI9HgHSwoAP7k2CcBMEZVqa/BozYgNghRGr2mNcj25bXvUtIEE6H1mXuon
	K+KfLqemJHuckeKYiTIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieh9x-0000Vu-Ot; Tue, 10 Dec 2019 15:10:45 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieh9q-0000VN-7U
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 15:10:39 +0000
Received: by mail-ed1-f67.google.com with SMTP id i6so15129365edr.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 07:10:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=d3LpfkiOtgnF+YXqBRtQ1uCrUPaBnT2ASogR2NekSgM=;
 b=eSMvXwVUqFyimcHCzsV++Tsh7KvYmi4lN4QkGa0J5hpzdHulAK9vXsw4A/qnBq2j4C
 n6lIQtZBB7AKw/Jw4OUZwLxvRST+dh2Tc+ErtmGb/PYfRZlhf5LppO6lalDx5W3JY2v0
 Qny498/Y0GFLX1oS4H/PdUrZr6vO91c0qcXhwxUOQVVWy0vPnORT8DYXjYcG2DFefmDT
 YL9MCaYmbN+pzU11XFWxC6O2mkFyxH+VyfA4/uwP/fYUEWyBkZD+X+GYMo1/8zKEkbYq
 yFoTlRgwNBGQ8fJiJGMglUO0prXDF42j5WbqfCB2dNNWYC3mdWUIMzI/U7JDOUGIy9qi
 EcGw==
X-Gm-Message-State: APjAAAVxKqePjxkAYGeHNKm/fvku8WbVg9e4m36taaRKPR3TmxXiaLoi
 Wcy3Sic3q5y92gys7F4yazs=
X-Google-Smtp-Source: APXvYqy/95q2xb2Iruz/RwPg3uBLj3KDHEEYzGiywSfr9MJZs9R+/4d7za2vV6DsnfbS19wmkp6vdQ==
X-Received: by 2002:a17:906:cb8d:: with SMTP id
 mf13mr4075579ejb.147.1575990636835; 
 Tue, 10 Dec 2019 07:10:36 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id a13sm68936edh.22.2019.12.10.07.10.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 07:10:36 -0800 (PST)
Date: Tue, 10 Dec 2019 16:10:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 07/10] tty: serial: samsung_tty: use standard debugging
 macros
Message-ID: <20191210151034.GF11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-7-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-7-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_071038_720715_81886E2A 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
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

On Tue, Dec 10, 2019 at 03:37:03PM +0100, Greg Kroah-Hartman wrote:
> The dbg() macro for the driver is not needed at all, all drivers should
> use the common dynamic debugging infrastructure, not roll their own.  So
> delete the custom macro and convert the driver to use dev_dbg() instead,
> providing a lot more information than the previous macro provided.
> 

Since now we have early console this should be functionally equal and
makes sense.

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
