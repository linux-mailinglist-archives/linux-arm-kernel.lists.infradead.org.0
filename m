Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 455DE136A96
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 11:08:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JDECUKAGUMZuatNzJVJ7zvSRUoBiurWFLY5DcIQyKdo=; b=f3QTjWV/WwgGU3
	4yRx9mnuuysFFB68hmSg6PyFjtkQteM40P6ez57yoF/evxDgSA1QVStFdOup0CbmBC+5oksbuyJml
	YJ47ulNqOZLSZsLCD/7KlY5ZUpjgJDDD7E7QgNaslFutIWK0NKZBo09SXLYYOLplhMilWCcxiwKvZ
	NVF4RiaC0mExF0tjl8ytK6sJA6T4OXVtvVAaIGn5xLQt6bow2DIIBdIUNXWjcM7VXPJXO2bI9MyHH
	TIJ5DP2O+KuBD2Md7iHDlWgYsJUcPmsDqZ4AVXbLK7P44E7cWeFkgir5dFHEpn55BZ/oQvNZ8/MmC
	Uw3BD4RRtmA4AhkTs5Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iprDU-0005be-FS; Fri, 10 Jan 2020 10:08:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iprDL-0005aa-99; Fri, 10 Jan 2020 10:08:24 +0000
X-UUID: 5dd8b50e51b747a8812a05ececdc82aa-20200110
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=FYP5p0wxJ3QFwXLMGPYrw3vhC17+4GD5PVgVtXVVOhQ=; 
 b=q7++ne3AnzWXWNTq4xNmouj5aa2eDIdlw9sI08/AJ9rMRXmfJLWQPH7JNajbssaEgwEInkfipZG1OEArM7j0VrO1/CGzQMcXpfHV7zAsvIzJee/zsfMX4SgzOmBN5TXLN1ngB2npMiEzvkyKPmwgO6F6tcri2K125pg+ug/bR9s=;
X-UUID: 5dd8b50e51b747a8812a05ececdc82aa-20200110
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 22888282; Fri, 10 Jan 2020 02:08:18 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 Jan 2020 02:08:57 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 Jan 2020 18:07:49 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 10 Jan 2020 18:08:54 +0800
Message-ID: <1578650895.3348.18.camel@mtksdccf07>
Subject: Re: [v6, 3/5] media: videodev2.h: Add new boottime timestamp type
From: Jungo Lin <jungo.lin@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Date: Fri, 10 Jan 2020 18:08:15 +0800
In-Reply-To: <081d7d77-2bf7-0fc2-60ea-8ba8faa5b6af@xs4all.nl>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20191219054930.29513-1-jungo.lin@mediatek.com>
 <20191219054930.29513-4-jungo.lin@mediatek.com>
 <081d7d77-2bf7-0fc2-60ea-8ba8faa5b6af@xs4all.nl>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_020823_328292_C0561539 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart@ideasonboard.com, robh@kernel.org, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, Jerry-ch.Chen@mediatek.com, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, shik@chromium.org,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 zwisler@chromium.org, ddavenport@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans:

Appreciate your comments on this patch.

On Tue, 2020-01-07 at 15:10 +0100, Hans Verkuil wrote:
> On 12/19/19 6:49 AM, Jungo Lin wrote:
> > For Camera AR(Augmented Reality) application requires camera timestamps
> > to be reported with CLOCK_BOOTTIME to sync timestamp with other sensor
> > sources.
> > 
> > The boottime timestamp is identical to monotonic timestamp,
> > except it also includes any time that the system is suspended.
> > 
> > Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> > ---
> > Changes from v6:
> >  - No change.
> > ---
> >  Documentation/media/uapi/v4l/buffer.rst | 11 ++++++++++-
> >  include/uapi/linux/videodev2.h          |  2 ++
> >  2 files changed, 12 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/media/uapi/v4l/buffer.rst b/Documentation/media/uapi/v4l/buffer.rst
> > index 9149b57728e5..f45bfce7fddd 100644
> > --- a/Documentation/media/uapi/v4l/buffer.rst
> > +++ b/Documentation/media/uapi/v4l/buffer.rst
> > @@ -662,13 +662,22 @@ Buffer Flags
> >        - 0x00002000
> >        - The buffer timestamp has been taken from the ``CLOCK_MONOTONIC``
> >  	clock. To access the same clock outside V4L2, use
> > -	:c:func:`clock_gettime`.
> > +	:c:func:`clock_gettime` using clock IDs ``CLOCK_MONOTONIC``.
> 
> IDs -> ID
> 

Ok, fix in next version.

> >      * .. _`V4L2-BUF-FLAG-TIMESTAMP-COPY`:
> >  
> >        - ``V4L2_BUF_FLAG_TIMESTAMP_COPY``
> >        - 0x00004000
> >        - The CAPTURE buffer timestamp has been taken from the corresponding
> >  	OUTPUT buffer. This flag applies only to mem2mem devices.
> > +    * .. _`V4L2_BUF_FLAG_TIMESTAMP_BOOTIME`:
> 
> You mistyped BOOTTIME as BOOTIME in a lot of places. Please check.
> 

Ok, fix this typo in next version.

> > +
> > +      - ``V4L2_BUF_FLAG_TIMESTAMP_BOOTIME``
> > +      - 0x00008000
> > +      - The buffer timestamp has been taken from the ``CLOCK_BOOTTIME``
> > +	clock. To access the same clock outside V4L2, use
> > +	:c:func:`clock_gettime` using clock IDs ``CLOCK_BOOTTIME``.
> 
> IDs -> ID
> 

Ditto.

> > +	Identical to CLOCK_MONOTONIC, except it also includes any time that
> > +	the system is suspended.
> >      * .. _`V4L2-BUF-FLAG-TSTAMP-SRC-MASK`:
> >  
> >        - ``V4L2_BUF_FLAG_TSTAMP_SRC_MASK``
> > diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> > index 04481c717fee..74ef9472e702 100644
> > --- a/include/uapi/linux/videodev2.h
> > +++ b/include/uapi/linux/videodev2.h
> > @@ -1060,6 +1060,8 @@ static inline __u64 v4l2_timeval_to_ns(const struct timeval *tv)
> >  #define V4L2_BUF_FLAG_TIMESTAMP_UNKNOWN		0x00000000
> >  #define V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC	0x00002000
> >  #define V4L2_BUF_FLAG_TIMESTAMP_COPY		0x00004000
> > +#define V4L2_BUF_FLAG_TIMESTAMP_BOOTIME		0x00008000
> 
> This should be 0x00006000.
> 
> (flags & V4L2_BUF_FLAG_TIMESTAMP_MASK) is a value that determines the timestamp
> source, so these timestamp defines are values, not bitmasks.
> 
> However, I don't like your approach. Whether to use MONOTONIC or BOOTTIME is really
> a userspace decision, and locking a driver to one of these two options seems
> wrong to me.
> 
> Instead add new V4L2_BUF_FLAG_USE_BOOTTIME flag that userspace can set when queuing
> the buffer and that indicates that instead of the MONOTONIC timestamp, it should return
> the BOOTTIME timestamp. This requires a simple helper function that returns either
> ktime_get_ns or ktime_get_boottime_ns based on the vb2_v4l2_buffer flags field.
> 
> It's definitely more work (although it can be limited to drivers that use vb2),
> but much more useful.
> 
> Regards,
> 
> 	Hans
> 

Agree.
We will add new V4L2_BUF_FLAG_USE_BOOTTIME flag (0x00006000.) to replace
this V4L2_BUF_FLAG_TIMESTAMP_BOOTIME flag for better usage.

> > +
> >  /* Timestamp sources. */
> >  #define V4L2_BUF_FLAG_TSTAMP_SRC_MASK		0x00070000
> >  #define V4L2_BUF_FLAG_TSTAMP_SRC_EOF		0x00000000
> > 
> 

Sincerely

Jungo
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
