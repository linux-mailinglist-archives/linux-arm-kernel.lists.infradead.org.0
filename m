Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B76A6DBEC7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 09:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/tdtDmIfEKvGDGlnFPBGl4SFtDxr18WqVjVqIADE10=; b=VxrNa1oZ1r9oX1
	s0guqdzs8sNE4ZNa3tNGty21aNqsJT5mDQl2qaHP0gAjBjehO7rSUyur91G89ANkPdrdoDEVhftdI
	9WmD5+qed1vUK4wrsas1kJKvQIGQ1N1zJDudI1k1y39lKLaNaWf8viAvB3lhEKzO2BZdLDpkOe5rp
	PgQKbBRFuRy1HkpX2scY0lg9EN5pGwXkbOfltlS+gk4l9mZj+O8mN3h/YnQBG+RKq2EZXM/yizyca
	DS5ZaAuBp/w44FkOxgOtpjNJ2hKkqb5seIRwfn1uYIYdWUNLGl/kZYneQFqmnL94F4lV7dS0JtGFX
	LhcCs0AJQwpTumI0ZaHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLN2c-0001FB-BH; Fri, 18 Oct 2019 07:51:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLN2O-0001DE-VU
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 07:51:07 +0000
Received: by mail-wr1-x443.google.com with SMTP id b9so5132352wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 00:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fM8b15WIQPLm6gJ8nUY/1hpjjf4QWro/MmV8xFN9zZg=;
 b=l3Rtf2YaDcnhqcYIac502Y6vhF6tmfGOqiAvN0tOqRaiXcGmeaWFzVBq0KxmtYW0pl
 tjP+okI9vW/AfAbBKGa4Fi4N2sXPAsYSct2k+7kBbp+B6UdCkuyCPtuMyAAHVLvl+lBI
 irVWh359lC7QQP4jprQSdsKNfxJ8c+vrMKu+tbnEu3iez5trFLKkOOWxSBpLzzNqDXuX
 7zubQUIElPgvwVprzYYPbKiaa2TpeupW3P+YcZD6PoO+4YHe5prRDO0heFx09e3SfRJC
 h9QaMd2VHT4gQoGkf9BqkcIj5j5JOyQgRf7KuA203aUZrd6EllCvjaVrBGQkKppACWXH
 12Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fM8b15WIQPLm6gJ8nUY/1hpjjf4QWro/MmV8xFN9zZg=;
 b=MmkevYkwymYrf1wikul9KmpSfxInk80c2Yxvhyt+n2DNfFq09Kx6FxmQP6ocp91hVJ
 W37ct8erJNjJk0MyRvMgyjRNmC63vXYlpTDFDQUtfnFfYmE6sjAgGpYwjN3Xtuk2Da2i
 Lgq2DF8taf141JkMNdKydMIG4Pz6JencvwD3eOyerUT18wIov60bw5E0/yl0o9chiWuN
 4SLT43fIrHW6Fnc6Smt2tGy1HJedDmmasWyLU98v8maqFxI3DK2bpImmLkjYTDL+66F/
 HQiWjwcXGcS8u7FGyD/jmkSSeURZF5i0JqKrhn1QrFziLasq8ud9GfY+s+QfCvaHB00q
 woYA==
X-Gm-Message-State: APjAAAWkmDHDBcrmpYXncLi8R8J0zb/1JJWdI6TYhZXudjh3v0NVBaBn
 NuhMsplAiHI7ZRx1/IOpA37nwG9E+6VibwSrrTFZGg==
X-Google-Smtp-Source: APXvYqwku8nt+MuAp1XiPYKGAIOaqnVm6JsBbUb/b9RmMmXJil36H+o1ul75jyBq7sk1LCp/3vysGh2vqJeRYWoDVRA=
X-Received: by 2002:adf:d08d:: with SMTP id y13mr6266832wrh.138.1571385059925; 
 Fri, 18 Oct 2019 00:50:59 -0700 (PDT)
MIME-Version: 1.0
References: <20191007145909.29979-1-mjourdan@baylibre.com>
 <8563127e-fe2c-a633-556b-8a883cebb171@xs4all.nl>
 <977c48e8-8275-c96a-688b-ccfbb873eb79@baylibre.com>
 <65a88bfc-d82b-1487-7983-507149b11673@xs4all.nl>
 <acef4f1e-0b59-30f5-f31f-9fc22f393072@baylibre.com>
 <fb6edb95-069e-abeb-416e-2327da0a87ab@xs4all.nl>
In-Reply-To: <fb6edb95-069e-abeb-416e-2327da0a87ab@xs4all.nl>
From: Maxime Jourdan <mjourdan@baylibre.com>
Date: Fri, 18 Oct 2019 09:50:49 +0200
Message-ID: <CAMO6nazotuiZQROoA4+b8tHZ-qpR4TS1RZWV6=fyPVCdsxz1Zg@mail.gmail.com>
Subject: Re: [PATCH 0/2] media: meson: vdec: Add compliant H264 support
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_005105_075775_A6DE5DCE 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-amlogic@lists.infradead.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 9, 2019 at 2:01 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 10/8/19 3:40 PM, Maxime Jourdan wrote:
> > On 07/10/2019 18:39, Hans Verkuil wrote:
> >> On 10/7/19 6:24 PM, Maxime Jourdan wrote:
> >>> On 07/10/2019 17:12, Hans Verkuil wrote:
> >>>> On 10/7/19 4:59 PM, Maxime Jourdan wrote:
> >>>>> Hello,
> >>>>>
> >>>>> This patch series aims to bring H.264 support as well as compliance update
> >>>>> to the amlogic stateful video decoder driver.
> >>>>>
> >>>>> There is 1 issue that remains currently:
> >>>>>
> >>>>>    - The following codepath had to be commented out from v4l2-compliance as
> >>>>> it led to stalling:
> >>>>>
> >>>>> if (node->codec_mask & STATEFUL_DECODER) {
> >>>>>      struct v4l2_decoder_cmd cmd;
> >>>>>      buffer buf_cap(m2m_q);
> >>>>>
> >>>>>      memset(&cmd, 0, sizeof(cmd));
> >>>>>      cmd.cmd = V4L2_DEC_CMD_STOP;
> >>>>>
> >>>>>      /* No buffers are queued, call STREAMON, then STOP */
> >>>>>      fail_on_test(node->streamon(q.g_type()));
> >>>>>      fail_on_test(node->streamon(m2m_q.g_type()));
> >>>>>      fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
> >>>>>
> >>>>>      fail_on_test(buf_cap.querybuf(node, 0));
> >>>>>      fail_on_test(buf_cap.qbuf(node));
> >>>>>      fail_on_test(buf_cap.dqbuf(node));
> >>>>>      fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
> >>>>>      for (unsigned p = 0; p < buf_cap.g_num_planes(); p++)
> >>>>>          fail_on_test(buf_cap.g_bytesused(p));
> >>>>>      fail_on_test(node->streamoff(q.g_type()));
> >>>>>      fail_on_test(node->streamoff(m2m_q.g_type()));
> >>>>>
> >>>>>      /* Call STREAMON, queue one CAPTURE buffer, then STOP */
> >>>>>      fail_on_test(node->streamon(q.g_type()));
> >>>>>      fail_on_test(node->streamon(m2m_q.g_type()));
> >>>>>      fail_on_test(buf_cap.querybuf(node, 0));
> >>>>>      fail_on_test(buf_cap.qbuf(node));
> >>>>>      fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
> >>>>>
> >>>>>      fail_on_test(buf_cap.dqbuf(node));
> >>>>>      fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
> >>>>>      for (unsigned p = 0; p < buf_cap.g_num_planes(); p++)
> >>>>>          fail_on_test(buf_cap.g_bytesused(p));
> >>>>>      fail_on_test(node->streamoff(q.g_type()));
> >>>>>      fail_on_test(node->streamoff(m2m_q.g_type()));
> >>>>> }
> >>>>>
> >>>>> The reason for this is because the driver has a limitation where all
> >>>>> capturebuffers must be queued to the driver before STREAMON is effective.
> >>>>> The firmware needs to know in advance what all the buffers are before
> >>>>> starting to decode.
> >>>>> This limitation is enforced via q->min_buffers_needed.
> >>>>> As such, in this compliance codepath, STREAMON is never actually called
> >>>>> driver-side and there is a stall on fail_on_test(buf_cap.dqbuf(node));
> >>>>
> >>>> That's interesting. I will have to look more closely at this.
>
> This requires a helper function in videobuf2-v4l2.c.
>
> In vdec_decoder_cmd you would need code like this:
>
>         if (!vb2_start_streaming_called(&capture_queue)) {
>                 vb2_dequeue_empty_last_buf(&capture_queue);
>                 return 0;
>         }
>
> The vb2_dequeue_empty_last_buf (function name can probably be improved upon!)
> does nothing if no capture buffers were queued, otherwise it takes the first
> buffer, sets the LAST flag and sets bytesused to 0 and marks it as DONE.
>
> The driver cannot do this directly, since the buffers were never queued to the
> driver and are owned by vb2.
>
> This is something that needs to be done for any codec driver that sets
> min_buffers_needed to a value > 1.
>
> The vb2 function would look something like this:
>
> void vb2_dqbuf_empty_last_buf(struct vb2_queue *q)
> {
>         struct vb2_buffer *vb;
>         struct vb2_v4l2_buffer *vbuf;
>         unsigned int i;
>
>         if (WARN_ON(q->is_output))
>                 return;
>         if (list_empty(&q->queued_list))
>                 return;
>         vb = list_first_entry(&q->queued_list, struct vb2_buffer, queued_entry);
>         list_del(&vb->queued_entry);
>         for (i = 0; i < vb->num_planes; i++)
>                 vb2_set_plane_payload(vb, i, 0)
>         vbuf = to_vb2_v4l2_buffer(vb);
>         vbuf->flags |= V4L2_BUF_FLAG_LAST;
>         vb2_buffer_done(vb, VB2_BUF_STATE_DONE);
> }
> EXPORT_SYMBOL_GPL(vb2_dqbuf_empty_last_buf);
>
> Neither compiled, nor tested, and I think this should be in v4l2-mem2mem.c instead of
> in videobuf2-v4l2.c since this is very m2m specific.
>
> So see this as a suggestion :-)
>
> Anyway, the key take-away from this is that userspace does not know if your driver
> behaves the way it does, so STOP should still produce a sane expected result.
>
> Which in this is just a single empty capture buffer marked LAST.

Thanks, this makes sense. It doesn't quite fit the current usage
unfortunately as the test in v4l2-compliance goes like this:

fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
fail_on_test(buf_cap.querybuf(node, 0));
fail_on_test(buf_cap.qbuf(node));
fail_on_test(buf_cap.dqbuf(node));
fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));

Since the buffer is queued after issuing the stop cmd, it is not
possible to flag it as DONE in vdec_decoder_cmd.

A solution would be to hijack vidioc_qbuf and flag the buffer if a
stop has been issued previously and the capture queue is not
streaming. Would that be okay ?

Maxime

>
> Regards,
>
>         Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
