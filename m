Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B4B118B77
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:48:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GVip9zMvx2TyfWNDC2whfePMAVxayk8YucbcNd7KhDk=; b=FObubfX9QvrCpO
	GNBqG6YIoGCyJOsPnt+cjBFCubsG8jA5ncQqTNrkwYh0wBxaKS4cAl3Ux7uqFlchs19oFpfImlAz/
	h59nTneRnCg8wuEQZNDYzdjMfTe/z6lGm3jqOK6BanhM2HMbGcK0gNiukLA3m98tizM4PM3kizZIl
	SuGLjL4C3D63fb1GHc9HkqxBrn/Md0r4yyLxSheEu/teU/CZmV+rwyp6PhRBYiyO+M8b1zUwmHWaX
	dn8zUpidxTrcoRcWYV2KatXr7xJuBuWXYHdMATvXICFWjS248/OrBniokN3h2f7FJd/n1SZHf5wAg
	qODPiSaFIOkqIBmvNLsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegoU-0002pZ-W5; Tue, 10 Dec 2019 14:48:35 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegoL-0002pC-O5
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:48:26 +0000
Received: by mail-ed1-f66.google.com with SMTP id e10so16176313edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 06:48:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0EAXVyH4ukLLoAvN9134a+PTWSnV2rVkKA3kz84w454=;
 b=QR+g5BQGSbESUyLoIYTtFMYBO7vwF0hrpxwv8yjDsUy2YEiS8Agjle9nIr/9CGzGsV
 KTKbylvyXDRqCi31lOjOEPA4jj0aVsQCWTYDwvhQGN1va9L6ovNyHwoazo7P4lFIG5qR
 vcVMOdh3wB+PbdfQttZ2eBlWVZKRG8zo2llP5KYKU/FQhaQKnBNQpjPfFy7Wh8tkLJKB
 ttRWNGCZ4RTj3kThgH9K7hWezIeIrU0Me+55T4g8JZ5i2031qkkDQ8QG2KY2Hjee6ZYc
 rmyNyDyHMdz+l0MBGrTh/fS8efKxnnT4nALh3cT/uEHQoEVJ7VGFzH+gnYnllC5CzPI5
 ytkg==
X-Gm-Message-State: APjAAAWy2Do59zBzmNTV5rurL8AHUwUG0mHpldVhDs1Zwdvd/6xKuxFA
 mAQfUvtx2Wt+6IfizideQBw1dMJIBmM=
X-Google-Smtp-Source: APXvYqzkz+9tUg97oDzo/5cpkoWY+HXY09yTxmkmj/tzpdgZ3zzzXDjzNsMv2ejroiWIPfLn7GLR2g==
X-Received: by 2002:a17:906:4e96:: with SMTP id
 v22mr4076976eju.219.1575989304153; 
 Tue, 10 Dec 2019 06:48:24 -0800 (PST)
Received: from pi3 ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id s16sm82829edy.51.2019.12.10.06.48.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 06:48:23 -0800 (PST)
Date: Tue, 10 Dec 2019 15:48:21 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 02/10] tty: serial: samsung_tty: fix build warning
Message-ID: <20191210144821.GB11222@pi3>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
 <20191210143706.3928480-2-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210143706.3928480-2-gregkh@linuxfoundation.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_064825_784221_0A290B1B 
X-CRM114-Status: UNSURE (   8.93  )
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

On Tue, Dec 10, 2019 at 03:36:58PM +0100, Greg Kroah-Hartman wrote:
> Fix a build warning on systems that do not have CONFIG_OF enabled.
> 

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
