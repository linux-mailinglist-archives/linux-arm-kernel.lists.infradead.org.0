Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85480256C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 19:30:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yl/ADTLwAm0PplAhepqEbdd3d9UbFSTHoYgqsZCQSD0=; b=th/OH12nwryrWu
	7wSDyMVkQspToSA5aI0ZHMB97qQPnx01qqEbkKiHdYVCfC1giGBOeBgY0uJw4VpHWeNgdyG1xyAM0
	CRuqakd+U9ZR+iWjbSUaSW0TDLQV98aaApsCt3PepQJtp+zZaNx/cE2O6ntTSgOBfsjAwzE0NKZz5
	cSU4umTwo7sgMamvzSMV2PgOe/CYQXNI6cSMb0E50VFCWEkD8edUO/dUWX4q8MpZtH0PGXouhlrr7
	TQnwRhDEI1sj/k5nxE+8tPOcQ91hu9HEDm7eVg2MqiqVdsDpuKDNeSy7XNkhZQXivh04X4Zwo9OdZ
	9hyM47ZeNs5X0bJq67wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT8bB-0007Pm-MR; Tue, 21 May 2019 17:30:49 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT8b2-0007Nx-Gx; Tue, 21 May 2019 17:30:41 +0000
Received: by mail-ot1-x343.google.com with SMTP id u11so17078823otq.7;
 Tue, 21 May 2019 10:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/9NBxGWR7DQfsNAp+UB8rtdlEFycVGIN+18JmsiYGuc=;
 b=vUhtS+rYX9L7zrYqAWyLBRvFFbqk/RHqIizF7drZi52M8bmoLwhxK4PSijJ+uUIfqF
 rLP0jDniA9pfsOBlUmWsEtXBAeUc1/niCJfPqU/iQiqGl6XIF7sWJAeexI80nUwKxjqx
 r3VEK1k81IkqsPC9VXBMoA/saHdq63zxZm4P5HjLjTRJgzWb4q2u5xNYii0rJrYQnyNQ
 wCyxAfC9ULgZjosiglk7uTRpT1QrC+aeOEt7ShH1+Ys9v7DYYutg4H7xnBBhO8QkqDxW
 kABm7cXkC3E4ala2PojMu41af8nsStfOwQ/3KIKerkFrJzQpyHjiK4yZVUB7ducP0Gar
 IukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/9NBxGWR7DQfsNAp+UB8rtdlEFycVGIN+18JmsiYGuc=;
 b=GLbRPQuIa6zep8Oc/FM0oiylbsLpfbWxUEwiL13l3OW+MQtcvDbUeCSdIpOr39jRus
 vSiaQ6siuy2pSVlLUOLSKPa935/wxw6gE1vfdUs/UlCgL9WEdTgQ4pfNZKmVxHHkDHJs
 czB+7QwiWgRzgHXemaWqhfvptuoY87astELGYJ2rBknv05wgP9bciNNFqE1bLFK5PSlY
 JdjN94VKlQIWhgJide/O3e5IBpolu+m4xzZ/ZchZoW7dqC3+/vUjYrGqmVzs+Cv4uEwo
 jTHggTtLK1aRpQPlVQMekolDqaEkUB9N7GnOsmJC/ZFNVZ0rdWVY+RM0RI0IU1UpBKLg
 8o7w==
X-Gm-Message-State: APjAAAXJW5dVHB+PQbdIML6GcyqvgiP77MpeXxIiuGaerXT9DUBlzc2/
 lp7ubRv4pbY0jo9+sLpxuymnxkPGDFgBRrEc4r4=
X-Google-Smtp-Source: APXvYqz3bsCqphTyB2v13j/v7Ohjzl6D44cpTCYwzD61Mga35oYp7a+Bu3LOVZ458XKaNJoA+kmPDHcyl1gOxohdNA8=
X-Received: by 2002:a9d:32a6:: with SMTP id u35mr37879265otb.81.1558459836920; 
 Tue, 21 May 2019 10:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190521150130.31684-1-narmstrong@baylibre.com>
 <20190521150130.31684-2-narmstrong@baylibre.com>
In-Reply-To: <20190521150130.31684-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Tue, 21 May 2019 19:30:26 +0200
Message-ID: <CAFBinCAwD7W1zQ2YZgecowZUEnoVpGXyGQnOKhB5T3OvOvvbkg@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: clk: meson: add g12b periph clock
 controller bindings
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_103040_562345_1D1A7FF5 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 jbrunet@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 21, 2019 at 5:02 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Update the documentation to support clock driver for the Amlogic G12B SoC.
>
> G12B clock driver is very close, the main differences are :
> - the clock tree is duplicated for the both clusters, and the
>   SYS_PLL are swapped between the clusters
> - G12A has additional clocks like for CSI an other components
I missed this in v1, it should be G12B?

>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
with above typo fixed (assuming it is one):
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
