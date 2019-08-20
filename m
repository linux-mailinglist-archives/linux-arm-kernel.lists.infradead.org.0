Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 989439660D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 18:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IRdi6hDCyOo5EoNi/e/S8tXEz1t5BJupwEVlOez2ytE=; b=vETLLRVB3V4Sfn
	CF7yXOqgamUbuQQiSngd8fG+L7dmkKrlPewggYAjUUAlPoj4DvMFZKcbBq/EQ23JrJC3H40034pn4
	8nQJGOmeks5gHaH4noYpTLQUVzefddvCsyPoJgd23BGhqZ2GMi/vTPTLZ7TB/x9cDiV0tALoKKxsV
	d4PdYb/YEt5jd9FyOE1Al44SpwyFujFXMFh67NP/TrzbhWcRpqL5Dn9EIP9DlTe1zXCGgvbAkdw+Z
	WSblPMufmDJrv0XqKBFNx0xquGRgHV+mKSx5hyw+1qWOlSUMdj2KnxY1N/MfQHQVQNfYUJfcq6Ijj
	W+gxRhQrnhgpqOje1zww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06oK-0000mg-W2; Tue, 20 Aug 2019 16:16:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06o3-0000jX-Ns; Tue, 20 Aug 2019 16:16:24 +0000
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
 [209.85.160.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4F8FE230F2;
 Tue, 20 Aug 2019 16:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566317783;
 bh=bq0/jB5m4Jp2FX8tBxSzWeqfhZTnVq066dgi39PlpzE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=TClCeVoX+Lao6744v1UtRF8HhC2UQ2O5TO4HnDMwLhBzXPXaXeg3mhBCGKmLEgQD3
 6PHk/4MEGIVN+wNL1L4SkDQYveyMBVn1UZu/Q3GTwx3vpwjjmAUtB51+m6/ppcbkYa
 F736nAUWf3TfUAuhGN1ohivoz5Kn+FgeyuP5FVg8=
Received: by mail-qt1-f174.google.com with SMTP id i4so6653971qtj.8;
 Tue, 20 Aug 2019 09:16:23 -0700 (PDT)
X-Gm-Message-State: APjAAAX8zBPD0dVPpAZdF6Lh3WuAMMMT7WGHgVKd65Jkm2QO4mdycpcd
 4YAv3JrT9svjAL8R2JfygzZuaH2FeCe5vPwpEQ==
X-Google-Smtp-Source: APXvYqwp9qLnX0fVBz6JKjNTCRZjs4AvNuGh+ir98aRhQvRHBFS366WOun9yixr1j0KWUOR7JkKRSM8t6XOkoOt3MOs=
X-Received: by 2002:ac8:7593:: with SMTP id s19mr26991334qtq.136.1566317782530; 
 Tue, 20 Aug 2019 09:16:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190820144052.18269-1-narmstrong@baylibre.com>
 <20190820144052.18269-6-narmstrong@baylibre.com>
In-Reply-To: <20190820144052.18269-6-narmstrong@baylibre.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 20 Aug 2019 11:16:10 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKAL0UG2afJgOVjtzgDA9oQ35p9ieSYnzys5OPYU-RvmQ@mail.gmail.com>
Message-ID: <CAL_JsqKAL0UG2afJgOVjtzgDA9oQ35p9ieSYnzys5OPYU-RvmQ@mail.gmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: arm: amlogic: add SEI Robotics SEI610
 bindings
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_091623_797381_3AE3A5A3 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 9:41 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Add the compatible for the Amlogic SM1 Based SEI610 board.
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
