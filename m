Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261A82B9E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igeHXyXUbdpKkuORmj6GZHm4q8MDYdjvPox/r/mr5S8=; b=WnsoFi/0Lf+VZj
	TULTfx+JSwe+6l3sMRHp08nlzRBqN/doFAwW2U50yFEwaEda2RqVVrrF7s+QVWr2sEQbL4mP4O5kr
	axZoO27GrGnfsuywQ36See+y6dYFQ4M+FXJHkEAC7VEgpqJlWf35DHwImfxbT4l2+b9hCBXdvTHh+
	8+ujyHv3b7cZqKdNniPemcL+1uNRhWCSpm9475sbNqKWOTubTK72e9SmoMZfWp43giIzT8+TdgwRu
	wtjLSYS3TrBVwHOVVwkgISn18AKFOEQFFLdc400nCrsp3B2z2bMrYxhk/I5HImIWy77tnJDjdcYk7
	FrtBPnP8iVj41rQM/yqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVK2j-0005hN-Sm; Mon, 27 May 2019 18:08:17 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVK2H-00055R-Bw; Mon, 27 May 2019 18:07:51 +0000
Received: by mail-oi1-x242.google.com with SMTP id q186so12448245oia.0;
 Mon, 27 May 2019 11:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kcaNvQthNDxKMvADNpdrHbGy7J+JNlWa1s2SqBcaEbk=;
 b=gIoH6vOWf1CUM7ihI4sZTjpRSzfhaHBkPyAifCAnj2KxZUk0kXB8nO9b9zBjtdIt82
 FJcq+ZakIQnwNnpacSYY8Q9XZ3kACUtY36oD5HL1S3gSqZ5vbCeTUuOwZksxbVTsQSm4
 alcasRAamdvLQYfcwt0PAKg1PMsEMaFSR8c2KJJ7H9g6GRtCYe84O3SbIcFrD/IgmdV5
 8e8aFqQ59bLfBtQ2mGJnmcoeHbKaNxkaB39HeAujNjA4qO0ZKPz32/PgFt1tq2ZGtFqD
 xkXhwYlpGhGgJa/+4y95Yt3riqa9me5+sGtg3lEwM84SJ840aVDldMz+OEol6TjSrWyy
 AuKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kcaNvQthNDxKMvADNpdrHbGy7J+JNlWa1s2SqBcaEbk=;
 b=Zx7Hi5af0UKsEtOxOq4oXfYDguJuLyRReHahZ9nsueN3qvJRK5Knx2RNepkoT4cTGi
 siscCqabTtlLSc2TxVq611rRnbz4m5qE4rPH8TR6/kb+kXqrCzcfq6YC8nNCNM8B0V+R
 lj7ibL/dAICuSFf7wiDzR2FCHF+GR4DzUypXRDW+Op4UgBwiP0Hwr+n31W26B5itbB6l
 kv5aKbu+ALI15Aew4K3QX3ErPMBDncofbWktgeOns7Y2MUKw44r2+FVUc+6Hn3q/HDv7
 OiV2git3RTKBrlXFBcM7cbXWAxJKTt8ueY7ZGpqLmWW5l/HAMPbxro9/aCOJu+KL+1Ag
 xmCw==
X-Gm-Message-State: APjAAAUAGn++whHGEt7OxysSLFgoJ89NQGa2JtAHyMKZzJzOw84aCm3z
 onxyapnHZrNIm4t1+kKrjCt3NevdBsst481EmCJ/G7Z8910=
X-Google-Smtp-Source: APXvYqyKJgVpri79hGrpfwOvc1XUZLuwonSoBLbzelPi358W+vr2nCgaFj9A+/DdmdxrgBHpTBcRgN+TmPll0F1fK9s=
X-Received: by 2002:aca:3545:: with SMTP id c66mr135571oia.129.1558980468560; 
 Mon, 27 May 2019 11:07:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190527133857.30108-1-narmstrong@baylibre.com>
 <20190527133857.30108-9-narmstrong@baylibre.com>
In-Reply-To: <20190527133857.30108-9-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:07:37 +0200
Message-ID: <CAFBinCBPH6pwxOEVJaJxpEqnbi1775a15Ec8Ac53nVpa6+8-Dw@mail.gmail.com>
Subject: Re: [PATCH v2 08/10] ARM: dts: meson8b: update with SPDX Licence
 identifier
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_110749_476123_69D4753C 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:41 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> While the text specifies "of the GPL or the X11 license" the actual
> license text matches the MIT license as specified at [0]
>
> [0] https://spdx.org/licenses/MIT.html
>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
