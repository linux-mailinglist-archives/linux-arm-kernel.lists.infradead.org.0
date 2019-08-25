Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594F59C5E8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 21:41:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkXL6uXMc+5PUL93M14YwczvfHW1LbtiMztZP5KUeIc=; b=P7FQbYUoVk2k6R
	tB9YUtm3SCKUM86foV/JMEEPv/5N0wIXITlABIGp/e/uDkzhIxjP7QM4Wal9j8T72ZdsReuEIswZ+
	YgWT7PtyfqV+Xt4RaHmP0SwWrwtx/FXpEc8arK/FnnON1ZHy9A6AA12pQWAMhJLTJ1yDJK2tFMp8r
	snAPKaFjxd5PGzdfVK/zdL6AGjteS4oDxz3MJCYjMkLRT1LZjF4c5CQINbP7qvFsGAW+xr6UUyeQz
	KeJ3J4fzENRrnGYC29Iyaws95g/Sf+NKXkV/CKm/BKq79TCt0mrtH5GIaOHKBzu3UCApFgAd+VsmH
	H/4L2iUVO/gDNi2jsYGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1yOV-0003Pw-JG; Sun, 25 Aug 2019 19:41:43 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1yOE-0003OA-Tg; Sun, 25 Aug 2019 19:41:28 +0000
Received: by mail-ot1-x343.google.com with SMTP id w4so13253327ote.11;
 Sun, 25 Aug 2019 12:41:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qlDDkamxbX2r79L95zXK7WbBhhFB6AOzHAQ3OS8ilaA=;
 b=DUeUltupltLo1VWEITJxKcTkvn0FfJzHF252Zzj4GMZuQU4CwHodqhgKhFAckUu40/
 B9ZjxStjhQTI8+io8lhcYPKaTrlnTIdCRQa3DtSo2RgUOpJZLQ2kntUWzRUOpqKlOpeo
 yHwCrp/NvipwcmOCGDcJbzhnctT40seWRQOM4GjdqLBgP2X6GL2WtuNI7x1sET4haHdS
 kpoOcQyBOd7ef61l3WBdYsiNnQP2heTxH5we2W8mICV3PizL0b1g3mRxMo4kgGgkVtOa
 7/uYj/ijstBI548EDcA30s7K3LwtTxLmSQxzs4JQzKYczkMXY/YrrxmmU0HySPOqZooJ
 T0ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qlDDkamxbX2r79L95zXK7WbBhhFB6AOzHAQ3OS8ilaA=;
 b=OtXRVDWA4/nrw3/DaExwcPwM+nhuW59zwXO+/72lR+OaQsSRAR8LONT+d4of9V0p5Z
 UG9LpNMMD9UpGUovwaBUv+35T4NH/3ooWl2opCZjAezvgytHT6ATozB/ziK2coMEyUl2
 Dt43jYH3cMpteQv5sVxjI50ZYiaJmhD+tIbdbOtPLMTmq9c34wOfM09RlAGLd6OcOtTJ
 2MAwKSPQWpLy/eo5hT3BZAyIgx7BWy76+rR/2QMJhNIRBYP8uDpAeUWWAPL6RZCpm0Bx
 bQ3fGzm/RhqhtUvOhKYMtC46pwPodNygelRwoLw/ssI3JaurRBbsgNvu0CzXsXdxE652
 VmRg==
X-Gm-Message-State: APjAAAX0xvjGlWopu0uOV/rVjN7xxQIRQvy6V/l0TBPn7gNVhX5myEfs
 882emMlEW6XjKlBSJOes4eKrMnLj9wTXwHu8OW0=
X-Google-Smtp-Source: APXvYqxBvjkhxpmOWOLItNdm+J17A0188tF44vzyDOVXDo45nvGlddvvK9NIUw2Z4JdlCBImzeuT+hKRST3xC9eJUBg=
X-Received: by 2002:a9d:1d5:: with SMTP id e79mr12390982ote.98.1566762085291; 
 Sun, 25 Aug 2019 12:41:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190823081427.17228-1-narmstrong@baylibre.com>
 <20190823081427.17228-2-narmstrong@baylibre.com>
In-Reply-To: <20190823081427.17228-2-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sun, 25 Aug 2019 21:41:14 +0200
Message-ID: <CAFBinCACwWqMGDJ9R7f5D2YhyWz7n7UgH7A4fJbkAp2drKC2Kg@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: khadas-vim3: move common nodes into
 meson-khadas-vim3.dtsi
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_124126_963372_C99FA589 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 10:15 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> To prepare support of the Amlogic SM1 based Khadas VIM3, move the non-G12B
> specific nodes (all except DVFS and Audio) to a new meson-khadas-vim3.dtsi
out of curiosity: is audio because of different routing on the board
or is it just because the audio driver needs more work for SM1?

> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
