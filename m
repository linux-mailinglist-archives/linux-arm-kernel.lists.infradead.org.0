Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 305902BA1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 20:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyW+ltD38wefN+s58MuLmSsxZKLCPkV5OlPEX4+j9Q8=; b=Hs86TkuG+Kx2bj
	iNr+me/HN+dnG0tgExo858e6rN/QKW0btUHoMRfkdlcc/OOExMlX5L4E7xtaW/iMVACPMGRjJG799
	J1358drW9LQugQbjiSw2k9np62OjuDPqZsPu3rjma6zhGPlhAvOLBzVfZhGeldZXnMzpb3pA1WzAt
	HnrS4asbIADjMbVWZTzT9IztFfYi9i9E6JNRbiHYBfoDoZzOl8dPJb9s6quvzcYtXsbKsOR/wM1yn
	+auF/k+rYgOXpySEIK60+qmpKPG19AuPqvXofxI7G5Rm4H6uQtmzn3zgKRVysqJBThDTMR6rOEL4L
	SCWQa2ZZgneQOpwdLUcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVKLx-0007WD-Rs; Mon, 27 May 2019 18:28:09 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVKLp-0007VH-Iq; Mon, 27 May 2019 18:28:02 +0000
Received: by mail-oi1-x243.google.com with SMTP id z65so12448994oia.11;
 Mon, 27 May 2019 11:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wseEiwf2iDxEx0rB6+bstHWLvTH8+Jm8S/2DOnZEoi0=;
 b=U4DCnRER3Bo6N+YBQxNx5r8BgFCch9KSnniaEr49R7m55UNQtYzfvpxNgR0+hZ07dk
 ruQ0Sn/8fhPl2/tfFl6c2jn9N2fIdH+XhAAXLvCA4kqSAwyHFw7eHic6OZxxPXL+AE1k
 H3TbEeSrYrXRSTzCaxdNCYQ0h4NhvWgLwWh6D4sufX/FXiEmldm7jgDK4QKI/LSRyWYS
 Kz7OEw5lcbqIzeigKpu8jNJ9dCaIfJW8siWZZ8fDOa48812IBYJ/86Moowk9etD/dmWS
 S5P5JVOBPr6OXKKwv1mvSuuYYiWNywvQSa66j+CN+AuD7RqiRbn8xIhIzUjRjhHPuM40
 f0RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wseEiwf2iDxEx0rB6+bstHWLvTH8+Jm8S/2DOnZEoi0=;
 b=i45Z05CfywNbMj/VOlqncVNLN5Cb6ydYsynAevij1bMs02g1fGS7Hjc9jH2rxukily
 Lfu8/kHMaOZf6NoLJAliKuRG5EdzlUQ//OwY1TG2MyZE0Qh2ZbMZzolHhm3jS3Jz+GLo
 TPWG/QU13S8WizOwJsnvot3fh0gqKk0xtwRxX8AbGRU6cOzIHLA8Sk3OOtcnqL2WZHLa
 Jyb2DhHa14vT28wJvi9Su5DboAbCm3iWSbVQQq+OwfBhAxHkTEft4mIsDmdKKvRjLXkB
 qY/l7XqaZ38fzOhhhGkHYv9HK8VmS5RTUqwTxTr9wmgvQNrUu9N3yDfGWU38wApbDnHf
 h2Sg==
X-Gm-Message-State: APjAAAXWXy0637Bi0oHk7ISJaWr8zzACzWkHjIRgg0hPPDL/vXRrkbo9
 YfXqZZrxBXGAxznfXg06/Zh4yBXDpPAr/F13GPU=
X-Google-Smtp-Source: APXvYqwbfigH3TZlE9H2ckoSvg4wg8rLamp2jsQJnsfdYO0iUsmSoQWOoyFjfHYjDukhRzfcHFO1gwm7ahn3PyklXkU=
X-Received: by 2002:aca:f144:: with SMTP id p65mr194565oih.47.1558981680480;
 Mon, 27 May 2019 11:28:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190527132200.17377-1-narmstrong@baylibre.com>
 <20190527132200.17377-10-narmstrong@baylibre.com>
In-Reply-To: <20190527132200.17377-10-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 27 May 2019 20:27:49 +0200
Message-ID: <CAFBinCBZr7nSnNTGO5upowuT48-pcR57VU7-zaxZ3Ocb-tZ1sA@mail.gmail.com>
Subject: Re: [PATCH 09/10] arm64: dts: meson-gxbb-vega-s95: fix WiFi/BT module
 support
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_112801_620646_158BBD9D 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
Cc: khilman@baylibre.com, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 3:24 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Fix the SDIO WiFi support and add proper Bluetooth support on the
> Vega S95 board.
>
> Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
I'm the cause of everything that needed fixing here. thank you for
taking care of this, the result looks much better now:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
